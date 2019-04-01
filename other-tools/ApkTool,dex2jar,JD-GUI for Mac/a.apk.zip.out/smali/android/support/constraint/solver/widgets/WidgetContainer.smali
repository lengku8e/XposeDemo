.class public Landroid/support/constraint/solver/widgets/WidgetContainer;
.super Landroid/support/constraint/solver/widgets/ConstraintWidget;
.source "WidgetContainer.java"


# instance fields
.field protected mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 36
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>(II)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 58
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>(IIII)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 48
    return-void
.end method

.method public static getBounds(Ljava/util/ArrayList;)Landroid/support/constraint/solver/widgets/Rectangle;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;)",
            "Landroid/support/constraint/solver/widgets/Rectangle;"
        }
    .end annotation

    .line 193
    .local p0, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    new-instance v0, Landroid/support/constraint/solver/widgets/Rectangle;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/Rectangle;-><init>()V

    .line 194
    .local v0, "bounds":Landroid/support/constraint/solver/widgets/Rectangle;
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 195
    return-object v0

    .line 197
    :cond_0
    const v1, 0x7fffffff

    .line 198
    .local v1, "minX":I
    const/4 v2, 0x0

    .line 199
    .local v2, "maxX":I
    const v3, 0x7fffffff

    .line 200
    .local v3, "minY":I
    const/4 v4, 0x0

    .line 201
    .local v4, "maxY":I
    const/4 v5, 0x0

    .line 201
    .local v5, "i":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 201
    .local v6, "widgetsSize":I
    :goto_0
    if-ge v5, v6, :cond_5

    .line 202
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 203
    .local v7, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getX()I

    move-result v8

    if-ge v8, v1, :cond_1

    .line 204
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getX()I

    move-result v1

    .line 206
    :cond_1
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getY()I

    move-result v8

    if-ge v8, v3, :cond_2

    .line 207
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getY()I

    move-result v3

    .line 209
    :cond_2
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getRight()I

    move-result v8

    if-le v8, v2, :cond_3

    .line 210
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getRight()I

    move-result v2

    .line 212
    :cond_3
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v8

    if-le v8, v4, :cond_4

    .line 213
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v4

    .line 201
    .end local v7    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 216
    .end local v5    # "i":I
    .end local v6    # "widgetsSize":I
    :cond_5
    sub-int v5, v2, v1

    sub-int v6, v4, v3

    invoke-virtual {v0, v1, v3, v5, v6}, Landroid/support/constraint/solver/widgets/Rectangle;->setBounds(IIII)V

    .line 217
    return-object v0
.end method


# virtual methods
.method public add(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 1
    .param p1, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 72
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/WidgetContainer;

    .line 75
    .local v0, "container":Landroid/support/constraint/solver/widgets/WidgetContainer;
    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/WidgetContainer;->remove(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 77
    .end local v0    # "container":Landroid/support/constraint/solver/widgets/WidgetContainer;
    :cond_0
    invoke-virtual {p1, p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setParent(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 78
    return-void
.end method

.method public findWidget(FF)Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "found":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/WidgetContainer;->getDrawX()I

    move-result v1

    .line 135
    .local v1, "l":I
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/WidgetContainer;->getDrawY()I

    move-result v2

    .line 136
    .local v2, "t":I
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/WidgetContainer;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    .line 137
    .local v3, "r":I
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/WidgetContainer;->getHeight()I

    move-result v4

    add-int/2addr v4, v2

    .line 138
    .local v4, "b":I
    int-to-float v5, v1

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_0

    int-to-float v5, v3

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    int-to-float v5, v2

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_0

    int-to-float v5, v4

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_0

    .line 139
    move-object v0, p0

    .line 141
    :cond_0
    const/4 v5, 0x0

    .line 141
    .local v5, "i":I
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 141
    .local v6, "mChildrenSize":I
    :goto_0
    if-ge v5, v6, :cond_4

    .line 142
    iget-object v7, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 143
    .local v7, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    instance-of v8, v7, Landroid/support/constraint/solver/widgets/WidgetContainer;

    if-eqz v8, :cond_2

    .line 144
    move-object v8, v7

    check-cast v8, Landroid/support/constraint/solver/widgets/WidgetContainer;

    invoke-virtual {v8, p1, p2}, Landroid/support/constraint/solver/widgets/WidgetContainer;->findWidget(FF)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v8

    .line 145
    .local v8, "f":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v8, :cond_1

    .line 146
    move-object v0, v8

    .line 148
    .end local v8    # "f":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_1
    goto :goto_1

    .line 149
    :cond_2
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawX()I

    move-result v1

    .line 150
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawY()I

    move-result v2

    .line 151
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v8

    add-int/2addr v8, v1

    .line 152
    .end local v3    # "r":I
    .local v8, "r":I
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    add-int/2addr v3, v2

    .line 153
    .end local v4    # "b":I
    .local v3, "b":I
    int-to-float v4, v1

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_3

    int-to-float v4, v8

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_3

    int-to-float v4, v2

    cmpl-float v4, p2, v4

    if-ltz v4, :cond_3

    int-to-float v4, v3

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_3

    .line 154
    move-object v0, v7

    .line 141
    .end local v7    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v8    # "r":I
    .local v3, "r":I
    .restart local v4    # "b":I
    :cond_3
    move v4, v3

    move v3, v8

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 158
    .end local v5    # "i":I
    .end local v6    # "mChildrenSize":I
    :cond_4
    return-object v0
.end method

.method public findWidgets(IIII)Ljava/util/ArrayList;
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v0, "found":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    new-instance v1, Landroid/support/constraint/solver/widgets/Rectangle;

    invoke-direct {v1}, Landroid/support/constraint/solver/widgets/Rectangle;-><init>()V

    .line 173
    .local v1, "area":Landroid/support/constraint/solver/widgets/Rectangle;
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/support/constraint/solver/widgets/Rectangle;->setBounds(IIII)V

    .line 174
    const/4 v2, 0x0

    .line 174
    .local v2, "i":I
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 174
    .local v3, "mChildrenSize":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 175
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 176
    .local v4, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    new-instance v5, Landroid/support/constraint/solver/widgets/Rectangle;

    invoke-direct {v5}, Landroid/support/constraint/solver/widgets/Rectangle;-><init>()V

    .line 177
    .local v5, "bounds":Landroid/support/constraint/solver/widgets/Rectangle;
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawX()I

    move-result v6

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawY()I

    move-result v7

    .line 178
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v8

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v9

    .line 177
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/support/constraint/solver/widgets/Rectangle;->setBounds(IIII)V

    .line 179
    invoke-virtual {v1, v5}, Landroid/support/constraint/solver/widgets/Rectangle;->intersects(Landroid/support/constraint/solver/widgets/Rectangle;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 180
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    .end local v4    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v5    # "bounds":Landroid/support/constraint/solver/widgets/Rectangle;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 183
    .end local v2    # "i":I
    .end local v3    # "mChildrenSize":I
    :cond_1
    return-object v0
.end method

.method public getChildren()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRootConstraintContainer()Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .locals 4

    .line 105
    move-object v0, p0

    .line 106
    .local v0, "item":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    .line 107
    .local v1, "parent":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v2, 0x0

    .line 108
    .local v2, "container":Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    instance-of v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v3, :cond_0

    .line 109
    move-object v2, p0

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 111
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 112
    move-object v0, v1

    .line 113
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    .line 114
    instance-of v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v3, :cond_0

    .line 115
    move-object v2, v0

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    goto :goto_0

    .line 118
    :cond_1
    return-object v2
.end method

.method public layout()V
    .locals 4

    .line 265
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/WidgetContainer;->updateDrawPosition()V

    .line 266
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 267
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 270
    .local v0, "count":I
    const/4 v1, 0x0

    .line 270
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 271
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 272
    .local v2, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    instance-of v3, v2, Landroid/support/constraint/solver/widgets/WidgetContainer;

    if-eqz v3, :cond_1

    .line 273
    move-object v3, v2

    check-cast v3, Landroid/support/constraint/solver/widgets/WidgetContainer;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/WidgetContainer;->layout()V

    .line 270
    .end local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 276
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public remove(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 1
    .param p1, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 86
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setParent(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 88
    return-void
.end method

.method public removeAllChildren()V
    .locals 1

    .line 289
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 290
    return-void
.end method

.method public reset()V
    .locals 1

    .line 62
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 63
    invoke-super {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->reset()V

    .line 64
    return-void
.end method

.method public resetSolverVariables(Landroid/support/constraint/solver/Cache;)V
    .locals 3
    .param p1, "cache"    # Landroid/support/constraint/solver/Cache;

    .line 280
    invoke-super {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resetSolverVariables(Landroid/support/constraint/solver/Cache;)V

    .line 281
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 282
    .local v0, "count":I
    const/4 v1, 0x0

    .line 282
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 283
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 284
    .local v2, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v2, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resetSolverVariables(Landroid/support/constraint/solver/Cache;)V

    .line 282
    .end local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 286
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public setOffset(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 233
    invoke-super {p0, p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setOffset(II)V

    .line 234
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 235
    .local v0, "count":I
    const/4 v1, 0x0

    .line 235
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 236
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 237
    .local v2, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/WidgetContainer;->getRootX()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/WidgetContainer;->getRootY()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setOffset(II)V

    .line 235
    .end local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 239
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public updateDrawPosition()V
    .locals 5

    .line 247
    invoke-super {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->updateDrawPosition()V

    .line 248
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 249
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 252
    .local v0, "count":I
    const/4 v1, 0x0

    .line 252
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 253
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 254
    .local v2, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/WidgetContainer;->getDrawX()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/WidgetContainer;->getDrawY()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setOffset(II)V

    .line 255
    instance-of v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-nez v3, :cond_1

    .line 256
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->updateDrawPosition()V

    .line 252
    .end local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    .end local v1    # "i":I
    :cond_2
    return-void
.end method
