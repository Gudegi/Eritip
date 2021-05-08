"""empty message

Revision ID: ddf5b3c26e8a
Revises: 86180bc11cf9
Create Date: 2021-05-04 21:33:04.591287

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = 'ddf5b3c26e8a'
down_revision = '86180bc11cf9'
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.create_table('idesignNotice',
    sa.Column('idx', sa.Integer(), nullable=False),
    sa.Column('notN', sa.String(length=10), nullable=False),
    sa.Column('url', sa.String(length=500), nullable=False),
    sa.Column('title', sa.String(length=100), nullable=False),
    sa.Column('date', sa.String(length=20), nullable=False),
    sa.PrimaryKeyConstraint('idx')
    )
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_table('idesignNotice')
    # ### end Alembic commands ###