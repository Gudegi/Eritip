"""empty message

Revision ID: d848cb16b7de
Revises: fd9e50eb8a41
Create Date: 2021-04-30 22:14:16.820463

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = 'd848cb16b7de'
down_revision = 'fd9e50eb8a41'
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.create_table('ccssNotice',
    sa.Column('idx', sa.Integer(), nullable=False),
    sa.Column('notN', sa.String(length=10), nullable=False),
    sa.Column('url', sa.String(length=500), nullable=False),
    sa.Column('title', sa.String(length=100), nullable=False),
    sa.Column('date', sa.Date(), nullable=False),
    sa.PrimaryKeyConstraint('idx')
    )
    op.create_table('computingNotice',
    sa.Column('idx', sa.Integer(), nullable=False),
    sa.Column('notN', sa.String(length=10), nullable=False),
    sa.Column('url', sa.String(length=500), nullable=False),
    sa.Column('title', sa.String(length=100), nullable=False),
    sa.Column('date', sa.Date(), nullable=False),
    sa.PrimaryKeyConstraint('idx')
    )
    op.create_table('ibusNotice',
    sa.Column('idx', sa.Integer(), nullable=False),
    sa.Column('notN', sa.String(length=10), nullable=False),
    sa.Column('url', sa.String(length=500), nullable=False),
    sa.Column('title', sa.String(length=100), nullable=False),
    sa.Column('date', sa.Date(), nullable=False),
    sa.PrimaryKeyConstraint('idx')
    )
    op.create_table('idesNotice',
    sa.Column('idx', sa.Integer(), nullable=False),
    sa.Column('notN', sa.String(length=10), nullable=False),
    sa.Column('url', sa.String(length=500), nullable=False),
    sa.Column('title', sa.String(length=100), nullable=False),
    sa.Column('date', sa.Date(), nullable=False),
    sa.PrimaryKeyConstraint('idx')
    )
    op.create_table('iengNotice',
    sa.Column('idx', sa.Integer(), nullable=False),
    sa.Column('notN', sa.String(length=10), nullable=False),
    sa.Column('url', sa.String(length=500), nullable=False),
    sa.Column('title', sa.String(length=100), nullable=False),
    sa.Column('date', sa.Date(), nullable=False),
    sa.PrimaryKeyConstraint('idx')
    )
    op.create_table('lanCulNotice',
    sa.Column('idx', sa.Integer(), nullable=False),
    sa.Column('notN', sa.String(length=10), nullable=False),
    sa.Column('url', sa.String(length=500), nullable=False),
    sa.Column('title', sa.String(length=100), nullable=False),
    sa.Column('date', sa.Date(), nullable=False),
    sa.PrimaryKeyConstraint('idx')
    )
    op.create_table('pharmacyNotice',
    sa.Column('idx', sa.Integer(), nullable=False),
    sa.Column('notN', sa.String(length=10), nullable=False),
    sa.Column('url', sa.String(length=500), nullable=False),
    sa.Column('title', sa.String(length=100), nullable=False),
    sa.Column('date', sa.Date(), nullable=False),
    sa.PrimaryKeyConstraint('idx')
    )
    op.create_table('scitechNotice',
    sa.Column('idx', sa.Integer(), nullable=False),
    sa.Column('notN', sa.String(length=10), nullable=False),
    sa.Column('url', sa.String(length=500), nullable=False),
    sa.Column('title', sa.String(length=100), nullable=False),
    sa.Column('date', sa.Date(), nullable=False),
    sa.PrimaryKeyConstraint('idx')
    )
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_table('scitechNotice')
    op.drop_table('pharmacyNotice')
    op.drop_table('lanCulNotice')
    op.drop_table('iengNotice')
    op.drop_table('idesNotice')
    op.drop_table('ibusNotice')
    op.drop_table('computingNotice')
    op.drop_table('ccssNotice')
    # ### end Alembic commands ###
