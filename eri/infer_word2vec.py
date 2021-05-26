 #추천 시스템
import os
import pandas as pd
from gensim.models.word2vec import Word2Vec
import jpype
from konlpy.tag import Kkma
from sklearn.metrics.pairwise import cosine_similarity
    
    #eritip/eg/brain
class CosineW2V():

    def __init__(self):
        cwd = os.getcwd() 
        self.df = pd.read_csv(cwd+'/eri/eg/brain/Dataset/EIRTIP_data2.csv')
        self.word2vec_model = Word2Vec.load(cwd+'/eri/eg/brain/Model/ERITIPNotice_epoch15_min2_win2_demension200.bin')
        self.kkma = Kkma()

    def tokenizer_kkma2(self, doc):
        jpype.attachThreadToJVM()
        token_doc = [ word[0] for word in self.kkma.pos(doc) ]
        return token_doc

    def token_except2(self, df):
        idx = 0
        token_except = []
        for i in range(len(df)):
            token_except.append( self.tokenizer_kkma2(df['Q'][i]))
        return token_except
    
    def vectors(self, document_list):
        document_embedding_list = []

        # 각 문서에 대해서
        idx = 0
        for line in document_list:
            doc2vec = None
            count = 0
            for word in line:
                if word in self.word2vec_model.wv.vocab:
                    count += 1
                    # 해당 문서에 있는 모든 단어들의 벡터값을 더한다.
                    if doc2vec is None:
                        doc2vec = self.word2vec_model[word]
                    else:
                        doc2vec = doc2vec + self.word2vec_model[word]

            if doc2vec is not None:
                # 단어 벡터를 모두 더한 벡터의 값을 문서 길이로 나눠준다.
                doc2vec = doc2vec / count
                document_embedding_list.append(doc2vec)

        # 각 문서에 대한 문서 벡터 리스트를 리턴
        return document_embedding_list

    def infer(self, string):
        result = []
        tokenized_df = self.token_except2(self.df)
        document_embedding_list = self.vectors(tokenized_df)
        tokenized_string = [self.tokenizer_kkma2(string)]
        embedding_string = self.vectors(tokenized_string)

        cosine_list = cosine_similarity(document_embedding_list, embedding_string)

        idx_cos_list = []
        for i in range(len(cosine_list)):
            idx_cos_list.append([cosine_list[i], i])
        idx_cos_list = sorted(idx_cos_list, reverse=True)

        for i in range(3):
            result.append([ self.df.iloc[idx_cos_list[i][1]]['A'], idx_cos_list[i]])
    
        return result