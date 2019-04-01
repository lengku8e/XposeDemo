.class public Landroid/support/constraint/solver/widgets/Optimizer;
.super Ljava/lang/Object;
.source "Optimizer.java"


# static fields
.field static final FLAG_CHAIN_DANGLING:I = 0x1

.field static final FLAG_RECOMPUTE_BOUNDS:I = 0x2

.field static final FLAG_USE_OPTIMIZE:I = 0x0

.field public static final OPTIMIZATION_BARRIER:I = 0x2

.field public static final OPTIMIZATION_CHAIN:I = 0x4

.field public static final OPTIMIZATION_DIMENSIONS:I = 0x8

.field public static final OPTIMIZATION_DIRECT:I = 0x1

.field public static final OPTIMIZATION_NONE:I = 0x0

.field public static final OPTIMIZATION_RATIO:I = 0x10

.field public static final OPTIMIZATION_STANDARD:I = 0x3

.field static flags:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Z

    sput-object v0, Landroid/support/constraint/solver/widgets/Optimizer;->flags:[Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static analyze(ILandroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 16
    .param p0, "optimisationLevel"    # I
    .param p1, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 151
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->updateResolutionNodes()V

    .line 153
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v1

    .line 154
    .local v1, "leftNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v2

    .line 155
    .local v2, "topNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v3

    .line 156
    .local v3, "rightNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v4

    .line 158
    .local v4, "bottomNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    and-int/lit8 v5, p0, 0x8

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v5, v6, :cond_0

    move v5, v8

    goto :goto_0

    :cond_0
    move v5, v7

    .line 162
    .local v5, "optimiseDimensions":Z
    :goto_0
    iget-object v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v9, v9, v7

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v10, :cond_1

    .line 163
    invoke-static {v0, v7}, Landroid/support/constraint/solver/widgets/Optimizer;->optimizableMatchConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)Z

    move-result v9

    if-eqz v9, :cond_1

    move v9, v8

    goto :goto_1

    :cond_1
    move v9, v7

    .line 165
    .local v9, "isOptimizableHorizontalMatch":Z
    :goto_1
    iget v10, v1, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v11, 0x2

    if-eq v10, v12, :cond_13

    iget v10, v3, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    if-eq v10, v12, :cond_13

    .line 167
    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v10, v10, v7

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v10, v7, :cond_b

    if-eqz v9, :cond_2

    .line 168
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v7

    if-ne v7, v6, :cond_2

    goto/16 :goto_2

    .line 207
    :cond_2
    if-eqz v9, :cond_13

    .line 208
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    .line 214
    .local v7, "width":I
    invoke-virtual {v1, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 215
    invoke-virtual {v3, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 216
    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_4

    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_4

    .line 217
    if-eqz v5, :cond_3

    .line 218
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v3, v1, v8, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_3

    .line 220
    :cond_3
    invoke-virtual {v3, v1, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_3

    .line 222
    :cond_4
    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_6

    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_6

    .line 223
    if-eqz v5, :cond_5

    .line 224
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v3, v1, v8, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_3

    .line 226
    :cond_5
    invoke-virtual {v3, v1, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_3

    .line 228
    :cond_6
    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_8

    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_8

    .line 229
    if-eqz v5, :cond_7

    .line 230
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v1, v3, v14, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_3

    .line 232
    :cond_7
    neg-int v10, v7

    invoke-virtual {v1, v3, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_3

    .line 234
    :cond_8
    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_13

    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_13

    .line 235
    if-eqz v5, :cond_9

    .line 236
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 237
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 239
    :cond_9
    iget v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v10, v10, v13

    if-nez v10, :cond_a

    .line 240
    const/4 v10, 0x3

    invoke-virtual {v1, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 241
    invoke-virtual {v3, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 242
    invoke-virtual {v1, v3, v13}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 243
    invoke-virtual {v3, v1, v13}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    goto/16 :goto_3

    .line 246
    :cond_a
    invoke-virtual {v1, v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 247
    invoke-virtual {v3, v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 248
    neg-int v10, v7

    int-to-float v10, v10

    invoke-virtual {v1, v3, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 249
    int-to-float v10, v7

    invoke-virtual {v3, v1, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 250
    invoke-virtual {v0, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 250
    .end local v7    # "width":I
    goto/16 :goto_3

    .line 169
    :cond_b
    :goto_2
    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v7, :cond_d

    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v7, :cond_d

    .line 170
    invoke-virtual {v1, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 171
    invoke-virtual {v3, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 172
    if-eqz v5, :cond_c

    .line 173
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_3

    .line 175
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    invoke-virtual {v3, v1, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_3

    .line 177
    :cond_d
    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_f

    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v7, :cond_f

    .line 178
    invoke-virtual {v1, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 179
    invoke-virtual {v3, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 180
    if-eqz v5, :cond_e

    .line 181
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_3

    .line 183
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    invoke-virtual {v3, v1, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto :goto_3

    .line 185
    :cond_f
    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v7, :cond_11

    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_11

    .line 186
    invoke-virtual {v1, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 187
    invoke-virtual {v3, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 188
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    neg-int v7, v7

    invoke-virtual {v1, v3, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 189
    if-eqz v5, :cond_10

    .line 190
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v1, v3, v14, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto :goto_3

    .line 192
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    neg-int v7, v7

    invoke-virtual {v1, v3, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto :goto_3

    .line 194
    :cond_11
    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_13

    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_13

    .line 195
    invoke-virtual {v1, v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 196
    invoke-virtual {v3, v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 197
    if-eqz v5, :cond_12

    .line 198
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 199
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 200
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v1, v3, v14, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    .line 201
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto :goto_3

    .line 203
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v1, v3, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 204
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3, v1, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 258
    :cond_13
    :goto_3
    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v7, v7, v8

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v10, :cond_14

    .line 259
    invoke-static {v0, v8}, Landroid/support/constraint/solver/widgets/Optimizer;->optimizableMatchConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)Z

    move-result v7

    if-eqz v7, :cond_14

    move v15, v8

    goto :goto_4

    :cond_14
    const/4 v15, 0x0

    :goto_4
    move v7, v15

    .line 261
    .local v7, "isOptimizableVerticalMatch":Z
    iget v10, v2, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    if-eq v10, v12, :cond_26

    iget v10, v4, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    if-eq v10, v12, :cond_26

    .line 264
    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v10, v10, v8

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v10, v12, :cond_1e

    if-eqz v7, :cond_15

    .line 265
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v10

    if-ne v10, v6, :cond_15

    goto/16 :goto_5

    .line 317
    :cond_15
    if-eqz v7, :cond_26

    .line 318
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    .line 323
    .local v6, "height":I
    invoke-virtual {v2, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 324
    invoke-virtual {v4, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 325
    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_17

    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_17

    .line 326
    if-eqz v5, :cond_16

    .line 327
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v4, v2, v8, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_a

    .line 329
    :cond_16
    invoke-virtual {v4, v2, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_a

    .line 331
    :cond_17
    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_19

    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_19

    .line 332
    if-eqz v5, :cond_18

    .line 333
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v4, v2, v8, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_a

    .line 335
    :cond_18
    invoke-virtual {v4, v2, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_a

    .line 337
    :cond_19
    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_1b

    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_1b

    .line 338
    if-eqz v5, :cond_1a

    .line 339
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v8

    invoke-virtual {v2, v4, v14, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_a

    .line 341
    :cond_1a
    neg-int v8, v6

    invoke-virtual {v2, v4, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_a

    .line 343
    :cond_1b
    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_26

    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_26

    .line 344
    if-eqz v5, :cond_1c

    .line 345
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 346
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 348
    :cond_1c
    iget v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v10, v10, v13

    if-nez v10, :cond_1d

    .line 349
    const/4 v8, 0x3

    invoke-virtual {v2, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 350
    invoke-virtual {v4, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 351
    invoke-virtual {v2, v4, v13}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 352
    invoke-virtual {v4, v2, v13}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    goto/16 :goto_a

    .line 354
    :cond_1d
    invoke-virtual {v2, v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 355
    invoke-virtual {v4, v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 356
    neg-int v10, v6

    int-to-float v10, v10

    invoke-virtual {v2, v4, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 357
    int-to-float v10, v6

    invoke-virtual {v4, v2, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 358
    invoke-virtual {v0, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 359
    iget v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v10, :cond_26

    .line 360
    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v10

    iget v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v10, v8, v2, v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 360
    .end local v6    # "height":I
    goto/16 :goto_a

    .line 266
    :cond_1e
    :goto_5
    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v6, :cond_20

    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v6, :cond_20

    .line 267
    invoke-virtual {v2, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 268
    invoke-virtual {v4, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 269
    if-eqz v5, :cond_1f

    .line 270
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v4, v2, v8, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto :goto_6

    .line 272
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    invoke-virtual {v4, v2, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 274
    :goto_6
    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_26

    .line 275
    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 276
    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 277
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v6

    iget v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    neg-int v10, v10

    .line 276
    invoke-virtual {v2, v8, v6, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_a

    .line 279
    :cond_20
    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_22

    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v6, :cond_22

    .line 280
    invoke-virtual {v2, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 281
    invoke-virtual {v4, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 282
    if-eqz v5, :cond_21

    .line 283
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v4, v2, v8, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto :goto_7

    .line 285
    :cond_21
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    invoke-virtual {v4, v2, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 287
    :goto_7
    iget v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v6, :cond_26

    .line 288
    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v6

    iget v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v6, v8, v2, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_a

    .line 290
    :cond_22
    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v6, :cond_24

    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_24

    .line 291
    invoke-virtual {v2, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 292
    invoke-virtual {v4, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 293
    if-eqz v5, :cond_23

    .line 294
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v2, v4, v14, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto :goto_8

    .line 296
    :cond_23
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {v2, v4, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 298
    :goto_8
    iget v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v6, :cond_26

    .line 299
    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v6

    iget v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v6, v8, v2, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto :goto_a

    .line 301
    :cond_24
    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_26

    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_26

    .line 302
    invoke-virtual {v2, v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 303
    invoke-virtual {v4, v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 304
    if-eqz v5, :cond_25

    .line 305
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v2, v4, v14, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    .line 306
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v4, v2, v8, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    .line 307
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 308
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    goto :goto_9

    .line 310
    :cond_25
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v2, v4, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 311
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v2, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 313
    :goto_9
    iget v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v6, :cond_26

    .line 314
    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v6

    iget v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v6, v8, v2, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 366
    :cond_26
    :goto_a
    return-void
.end method

.method static applyChainOptimized(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;IILandroid/support/constraint/solver/widgets/ChainHead;)Z
    .locals 42
    .param p0, "container"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p2, "orientation"    # I
    .param p3, "offset"    # I
    .param p4, "chainHead"    # Landroid/support/constraint/solver/widgets/ChainHead;

    move-object/from16 v0, p1

    .line 382
    move-object/from16 v1, p4

    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mFirst:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 383
    .local v2, "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mLast:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 384
    .local v3, "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v4, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mFirstVisibleWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 385
    .local v4, "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v5, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mLastVisibleWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 386
    .local v5, "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v6, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mHead:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 388
    .local v6, "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object v7, v2

    .line 389
    .local v7, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v8, 0x0

    .line 390
    .local v8, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v9, 0x0

    .line 392
    .local v9, "done":Z
    const/4 v10, 0x0

    .line 393
    .local v10, "numMatchConstraints":I
    iget v11, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mTotalWeight:F

    .line 394
    .local v11, "totalWeights":F
    iget-object v12, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 395
    .local v12, "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v13, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mLastMatchConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 397
    .local v13, "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v1, p0

    move-object v14, v7

    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 397
    .end local v7    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v14, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    aget-object v7, v7, p2

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v15, 0x0

    move-object/from16 v16, v8

    .line 397
    .end local v8    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v16, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-ne v7, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v15

    .line 398
    .local v1, "isWrapContent":Z
    :goto_0
    const/4 v7, 0x0

    .line 399
    .local v7, "isChainSpread":Z
    const/16 v17, 0x0

    .line 400
    .local v17, "isChainSpreadInside":Z
    const/16 v18, 0x0

    .line 402
    .local v18, "isChainPacked":Z
    if-nez p2, :cond_4

    .line 403
    iget v8, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    if-nez v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    move v8, v15

    :goto_1
    move v7, v8

    .line 404
    iget v8, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    move/from16 v20, v1

    const/4 v1, 0x1

    if-ne v8, v1, :cond_2

    .line 404
    .end local v1    # "isWrapContent":Z
    .local v20, "isWrapContent":Z
    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    move v1, v15

    .line 405
    .end local v17    # "isChainSpreadInside":Z
    .local v1, "isChainSpreadInside":Z
    :goto_2
    iget v8, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    move/from16 v21, v1

    const/4 v1, 0x2

    if-ne v8, v1, :cond_3

    .line 405
    .end local v1    # "isChainSpreadInside":Z
    .local v21, "isChainSpreadInside":Z
    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    move v1, v15

    .line 405
    .end local v18    # "isChainPacked":Z
    .local v1, "isChainPacked":Z
    :goto_3
    goto :goto_7

    .line 407
    .end local v20    # "isWrapContent":Z
    .end local v21    # "isChainSpreadInside":Z
    .local v1, "isWrapContent":Z
    .restart local v17    # "isChainSpreadInside":Z
    .restart local v18    # "isChainPacked":Z
    :cond_4
    move/from16 v20, v1

    .line 407
    .end local v1    # "isWrapContent":Z
    .restart local v20    # "isWrapContent":Z
    iget v1, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    if-nez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_4

    :cond_5
    move v1, v15

    :goto_4
    move v7, v1

    .line 408
    iget v1, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    const/4 v8, 0x1

    if-ne v1, v8, :cond_6

    const/4 v1, 0x1

    goto :goto_5

    :cond_6
    move v1, v15

    .line 409
    .end local v17    # "isChainSpreadInside":Z
    .local v1, "isChainSpreadInside":Z
    :goto_5
    iget v8, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    move/from16 v22, v1

    const/4 v1, 0x2

    if-ne v8, v1, :cond_7

    .line 409
    .end local v1    # "isChainSpreadInside":Z
    .local v22, "isChainSpreadInside":Z
    const/4 v1, 0x1

    goto :goto_6

    :cond_7
    move v1, v15

    .line 416
    .end local v18    # "isChainPacked":Z
    .local v1, "isChainPacked":Z
    :goto_6
    move/from16 v21, v22

    .line 416
    .end local v22    # "isChainSpreadInside":Z
    .restart local v21    # "isChainSpreadInside":Z
    :goto_7
    const/4 v8, 0x0

    .line 417
    .local v8, "totalSize":F
    const/16 v17, 0x0

    .line 418
    .local v17, "totalMargins":F
    move-object/from16 v23, v6

    move v6, v10

    move-object v10, v14

    move v14, v8

    move v8, v15

    .line 420
    .local v6, "numMatchConstraints":I
    .local v8, "numVisibleWidgets":I
    .local v10, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v14, "totalSize":F
    .local v23, "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_8
    if-nez v9, :cond_15

    .line 422
    move/from16 v24, v9

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v9

    .line 422
    .end local v9    # "done":Z
    .local v24, "done":Z
    move-object/from16 v25, v12

    const/16 v12, 0x8

    .line 422
    .end local v12    # "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v25, "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eq v9, v12, :cond_a

    .line 423
    add-int/lit8 v8, v8, 0x1

    .line 424
    if-nez p2, :cond_8

    .line 425
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v14, v9

    goto :goto_9

    .line 427
    :cond_8
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v14, v9

    .line 429
    :goto_9
    if-eq v10, v4, :cond_9

    .line 430
    iget-object v9, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v9, v9, p3

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v14, v9

    .line 432
    :cond_9
    iget-object v9, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v9, v9, p3

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    int-to-float v9, v9

    add-float v17, v17, v9

    .line 433
    iget-object v9, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v18, p3, 0x1

    aget-object v9, v9, v18

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    int-to-float v9, v9

    add-float v17, v17, v9

    .line 436
    :cond_a
    iget-object v9, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v9, v9, p3

    .line 438
    .local v9, "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move/from16 v26, v8

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v8

    .line 438
    .end local v8    # "numVisibleWidgets":I
    .local v26, "numVisibleWidgets":I
    if-eq v8, v12, :cond_10

    iget-object v8, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v8, v8, p2

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v12, :cond_10

    .line 440
    add-int/lit8 v6, v6, 0x1

    .line 442
    if-nez p2, :cond_d

    .line 443
    iget v8, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-eqz v8, :cond_b

    .line 444
    return v15

    .line 445
    :cond_b
    iget v8, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-nez v8, :cond_c

    iget v8, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-eqz v8, :cond_10

    .line 446
    :cond_c
    return v15

    .line 449
    :cond_d
    iget v8, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eqz v8, :cond_e

    .line 450
    return v15

    .line 451
    :cond_e
    iget v8, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-nez v8, :cond_f

    iget v8, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-eqz v8, :cond_10

    .line 452
    :cond_f
    return v15

    .line 458
    :cond_10
    iget-object v8, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v8, v8, v12

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 459
    .local v8, "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    if-eqz v8, :cond_13

    .line 460
    iget-object v12, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 461
    .end local v16    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v12, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move/from16 v27, v6

    iget-object v6, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 461
    .end local v6    # "numMatchConstraints":I
    .local v27, "numMatchConstraints":I
    aget-object v6, v6, p3

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_12

    iget-object v6, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq v6, v10, :cond_11

    goto :goto_a

    .line 467
    :cond_11
    move-object/from16 v16, v12

    goto :goto_c

    .line 462
    :cond_12
    :goto_a
    const/4 v6, 0x0

    .line 462
    .end local v12    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v6, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    goto :goto_b

    .line 465
    .end local v27    # "numMatchConstraints":I
    .local v6, "numMatchConstraints":I
    .restart local v16    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_13
    move/from16 v27, v6

    .line 465
    .end local v6    # "numMatchConstraints":I
    .restart local v27    # "numMatchConstraints":I
    const/4 v6, 0x0

    .line 467
    :goto_b
    move-object/from16 v16, v6

    :goto_c
    if-eqz v16, :cond_14

    .line 468
    move-object/from16 v6, v16

    .line 472
    .end local v10    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v6, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object v10, v6

    move/from16 v9, v24

    goto :goto_d

    .line 470
    .end local v6    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v10    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_14
    const/4 v6, 0x1

    .line 472
    .end local v8    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v9    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v24    # "done":Z
    .local v6, "done":Z
    move v9, v6

    .line 418
    .end local v6    # "done":Z
    .local v9, "done":Z
    :goto_d
    move-object/from16 v12, v25

    move/from16 v8, v26

    move/from16 v6, v27

    goto/16 :goto_8

    .line 474
    .end local v25    # "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v26    # "numVisibleWidgets":I
    .end local v27    # "numMatchConstraints":I
    .local v6, "numMatchConstraints":I
    .local v8, "numVisibleWidgets":I
    .local v12, "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_15
    move/from16 v24, v9

    move-object/from16 v25, v12

    .line 474
    .end local v9    # "done":Z
    .end local v12    # "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v24    # "done":Z
    .restart local v25    # "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v9, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v9, v9, p3

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v9

    .line 475
    .local v9, "firstNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    iget-object v12, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v18, p3, 0x1

    aget-object v12, v12, v18

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v12

    .line 477
    .local v12, "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    move-object/from16 v28, v3

    iget-object v3, v9, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    .line 477
    .end local v3    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v28, "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v3, :cond_3c

    iget-object v3, v12, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    if-nez v3, :cond_16

    .line 479
    move-object/from16 v40, v4

    move/from16 v39, v6

    move/from16 v36, v7

    move-object/from16 v32, v10

    move-object/from16 v33, v12

    move-object/from16 v29, v13

    move-object v6, v2

    goto/16 :goto_1e

    .line 483
    :cond_16
    iget-object v3, v9, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v3, v3, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    move-object/from16 v29, v13

    const/4 v13, 0x1

    if-eq v3, v13, :cond_17

    .line 483
    .end local v13    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v29, "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v3, v12, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v3, v3, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    if-eq v3, v13, :cond_17

    .line 486
    return v15

    .line 489
    :cond_17
    if-lez v6, :cond_18

    if-eq v6, v8, :cond_18

    .line 491
    return v15

    .line 494
    :cond_18
    const/4 v3, 0x0

    .line 495
    .local v3, "extraMargin":F
    if-nez v1, :cond_19

    if-nez v7, :cond_19

    if-eqz v21, :cond_1b

    .line 496
    :cond_19
    if-eqz v4, :cond_1a

    .line 497
    iget-object v13, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v13, v13, p3

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v13

    int-to-float v3, v13

    .line 499
    :cond_1a
    if-eqz v5, :cond_1b

    .line 500
    iget-object v13, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v18, p3, 0x1

    aget-object v13, v13, v18

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v3, v13

    .line 504
    :cond_1b
    iget-object v13, v9, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v13, v13, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 505
    .local v13, "firstOffset":F
    move-object/from16 v30, v2

    iget-object v2, v12, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    .line 505
    .end local v2    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v30, "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget v2, v2, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 506
    .local v2, "lastOffset":F
    const/16 v18, 0x0

    .line 507
    .local v18, "distance":F
    cmpg-float v19, v13, v2

    if-gez v19, :cond_1c

    .line 508
    sub-float v19, v2, v13

    sub-float v19, v19, v14

    .line 508
    .end local v18    # "distance":F
    .local v19, "distance":F
    :goto_e
    goto :goto_f

    .line 510
    .end local v19    # "distance":F
    .restart local v18    # "distance":F
    :cond_1c
    sub-float v19, v13, v2

    sub-float v19, v19, v14

    goto :goto_e

    .line 513
    .end local v18    # "distance":F
    .restart local v19    # "distance":F
    :goto_f
    const-wide/16 v26, 0x1

    if-lez v6, :cond_27

    if-ne v6, v8, :cond_27

    .line 514
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v18

    if-eqz v18, :cond_1d

    move/from16 v31, v2

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    .line 514
    .end local v2    # "lastOffset":F
    .local v31, "lastOffset":F
    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, p2

    move-object/from16 v32, v10

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 514
    .end local v10    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v32, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-ne v2, v10, :cond_1e

    .line 515
    return v15

    .line 517
    .end local v31    # "lastOffset":F
    .end local v32    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v2    # "lastOffset":F
    .restart local v10    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_1d
    move/from16 v31, v2

    move-object/from16 v32, v10

    .line 517
    .end local v2    # "lastOffset":F
    .end local v10    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v31    # "lastOffset":F
    .restart local v32    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_1e
    add-float v19, v19, v14

    .line 518
    sub-float v19, v19, v17

    .line 519
    move-object v2, v4

    .line 520
    .end local v32    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v2, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move v10, v13

    .line 521
    .local v10, "position":F
    if-eqz v7, :cond_1f

    .line 522
    sub-float v15, v17, v3

    sub-float v19, v19, v15

    .line 524
    :cond_1f
    if-eqz v7, :cond_21

    .line 525
    move-object/from16 v33, v12

    iget-object v12, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 525
    .end local v12    # "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .local v33, "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    add-int/lit8 v15, p3, 0x1

    aget-object v12, v12, v15

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v10, v12

    .line 526
    iget-object v12, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v12, v12, p2

    .line 527
    .end local v16    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v12, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v12, :cond_20

    .line 528
    move-object/from16 v34, v2

    iget-object v2, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 528
    .end local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v34, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    aget-object v2, v2, p3

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v10, v2

    .line 531
    move-object/from16 v2, v34

    goto :goto_10

    .line 531
    .end local v34    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_20
    move-object/from16 v34, v2

    .line 531
    .end local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v34    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    goto :goto_10

    .line 531
    .end local v33    # "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v34    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v12, "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .restart local v16    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_21
    move-object/from16 v34, v2

    move-object/from16 v33, v12

    move-object/from16 v12, v16

    .line 531
    .end local v16    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v12, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v33    # "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    :goto_10
    if-eqz v2, :cond_26

    .line 532
    sget-object v15, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v15, :cond_22

    .line 533
    move-object/from16 v35, v12

    sget-object v12, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    .line 533
    .end local v12    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v35, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move/from16 v36, v7

    move/from16 v37, v8

    iget-wide v7, v12, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    .line 533
    .end local v7    # "isChainSpread":Z
    .end local v8    # "numVisibleWidgets":I
    .local v36, "isChainSpread":Z
    .local v37, "numVisibleWidgets":I
    sub-long v7, v7, v26

    iput-wide v7, v12, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    .line 534
    sget-object v7, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    move/from16 v38, v13

    iget-wide v12, v7, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    .line 534
    .end local v13    # "firstOffset":F
    .local v38, "firstOffset":F
    add-long v12, v12, v26

    iput-wide v12, v7, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    .line 535
    sget-object v7, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v12, v7, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    add-long v12, v12, v26

    iput-wide v12, v7, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    goto :goto_11

    .line 537
    .end local v35    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v36    # "isChainSpread":Z
    .end local v37    # "numVisibleWidgets":I
    .end local v38    # "firstOffset":F
    .restart local v7    # "isChainSpread":Z
    .restart local v8    # "numVisibleWidgets":I
    .restart local v12    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v13    # "firstOffset":F
    :cond_22
    move/from16 v36, v7

    move/from16 v37, v8

    move-object/from16 v35, v12

    move/from16 v38, v13

    .line 537
    .end local v7    # "isChainSpread":Z
    .end local v8    # "numVisibleWidgets":I
    .end local v12    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v13    # "firstOffset":F
    .restart local v35    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v36    # "isChainSpread":Z
    .restart local v37    # "numVisibleWidgets":I
    .restart local v38    # "firstOffset":F
    :goto_11
    iget-object v7, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v12, v7, p2

    .line 538
    .end local v35    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v12    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-nez v12, :cond_24

    if-ne v2, v5, :cond_23

    goto :goto_12

    .line 553
    :cond_23
    move/from16 v39, v6

    goto :goto_13

    .line 539
    :cond_24
    :goto_12
    int-to-float v7, v6

    div-float v7, v19, v7

    .line 540
    .local v7, "dimension":F
    const/4 v8, 0x0

    cmpl-float v8, v11, v8

    if-lez v8, :cond_25

    .line 541
    iget-object v8, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    aget v8, v8, p2

    mul-float v8, v8, v19

    div-float v7, v8, v11

    .line 543
    :cond_25
    iget-object v8, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v8, v8, p3

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v10, v8

    .line 544
    iget-object v8, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v8, v8, p3

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v8

    iget-object v13, v9, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    invoke-virtual {v8, v13, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 546
    iget-object v8, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v13, p3, 0x1

    aget-object v8, v8, v13

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v8

    iget-object v13, v9, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move/from16 v39, v6

    add-float v6, v10, v7

    .line 546
    .end local v6    # "numMatchConstraints":I
    .local v39, "numMatchConstraints":I
    invoke-virtual {v8, v13, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 548
    iget-object v6, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 549
    iget-object v6, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v8, p3, 0x1

    aget-object v6, v6, v8

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 550
    add-float/2addr v10, v7

    .line 551
    iget-object v6, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v8, p3, 0x1

    aget-object v6, v6, v8

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v10, v6

    .line 553
    .end local v7    # "dimension":F
    :goto_13
    move-object v2, v12

    .line 531
    move/from16 v7, v36

    move/from16 v8, v37

    move/from16 v13, v38

    move/from16 v6, v39

    goto/16 :goto_10

    .line 555
    .end local v36    # "isChainSpread":Z
    .end local v37    # "numVisibleWidgets":I
    .end local v38    # "firstOffset":F
    .end local v39    # "numMatchConstraints":I
    .restart local v6    # "numMatchConstraints":I
    .local v7, "isChainSpread":Z
    .restart local v8    # "numVisibleWidgets":I
    .restart local v13    # "firstOffset":F
    :cond_26
    move/from16 v39, v6

    move/from16 v36, v7

    move/from16 v37, v8

    move-object/from16 v35, v12

    move/from16 v38, v13

    .line 555
    .end local v6    # "numMatchConstraints":I
    .end local v7    # "isChainSpread":Z
    .end local v8    # "numVisibleWidgets":I
    .end local v12    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v13    # "firstOffset":F
    .restart local v35    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v36    # "isChainSpread":Z
    .restart local v37    # "numVisibleWidgets":I
    .restart local v38    # "firstOffset":F
    .restart local v39    # "numMatchConstraints":I
    const/4 v6, 0x1

    return v6

    .line 558
    .end local v31    # "lastOffset":F
    .end local v33    # "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v35    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v36    # "isChainSpread":Z
    .end local v37    # "numVisibleWidgets":I
    .end local v38    # "firstOffset":F
    .end local v39    # "numMatchConstraints":I
    .local v2, "lastOffset":F
    .restart local v6    # "numMatchConstraints":I
    .restart local v7    # "isChainSpread":Z
    .restart local v8    # "numVisibleWidgets":I
    .local v10, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v12, "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .restart local v13    # "firstOffset":F
    .restart local v16    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_27
    move/from16 v31, v2

    move/from16 v39, v6

    move/from16 v36, v7

    move/from16 v37, v8

    move-object/from16 v32, v10

    move-object/from16 v33, v12

    move/from16 v38, v13

    .line 558
    .end local v2    # "lastOffset":F
    .end local v6    # "numMatchConstraints":I
    .end local v7    # "isChainSpread":Z
    .end local v8    # "numVisibleWidgets":I
    .end local v10    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v12    # "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v13    # "firstOffset":F
    .restart local v31    # "lastOffset":F
    .restart local v32    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v33    # "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .restart local v36    # "isChainSpread":Z
    .restart local v37    # "numVisibleWidgets":I
    .restart local v38    # "firstOffset":F
    .restart local v39    # "numMatchConstraints":I
    cmpg-float v2, v19, v14

    if-gez v2, :cond_28

    .line 559
    return v15

    .line 562
    :cond_28
    if-eqz v1, :cond_2e

    .line 563
    sub-float v19, v19, v3

    .line 565
    move-object v2, v4

    .line 566
    .end local v32    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v2, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v6, v30

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalBiasPercent()F

    move-result v7

    .line 566
    .end local v30    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v6, "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    mul-float v7, v7, v19

    add-float v13, v38, v7

    .line 567
    .end local v19    # "distance":F
    .local v13, "distance":F
    move-object v10, v2

    move/from16 v19, v13

    .line 567
    .end local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v13    # "distance":F
    .restart local v10    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v19    # "distance":F
    :goto_14
    if-eqz v10, :cond_2d

    .line 568
    sget-object v2, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v2, :cond_29

    .line 569
    sget-object v2, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v7, v2, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    sub-long v7, v7, v26

    iput-wide v7, v2, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    .line 570
    sget-object v2, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v7, v2, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    add-long v7, v7, v26

    iput-wide v7, v2, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    .line 571
    sget-object v2, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v7, v2, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    add-long v7, v7, v26

    iput-wide v7, v2, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    .line 573
    :cond_29
    iget-object v2, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v16, v2, p2

    .line 574
    if-nez v16, :cond_2a

    if-ne v10, v5, :cond_2c

    .line 575
    :cond_2a
    const/4 v2, 0x0

    .line 576
    .local v2, "dimension":F
    if-nez p2, :cond_2b

    .line 577
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    int-to-float v2, v7

    goto :goto_15

    .line 579
    :cond_2b
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v7

    int-to-float v2, v7

    .line 581
    :goto_15
    iget-object v7, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, p3

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    int-to-float v7, v7

    add-float v7, v19, v7

    .line 582
    .end local v19    # "distance":F
    .local v7, "distance":F
    iget-object v8, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v8, v8, p3

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v8

    iget-object v12, v9, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    invoke-virtual {v8, v12, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 584
    iget-object v8, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v8, v8, v12

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v8

    iget-object v12, v9, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    add-float v13, v7, v2

    invoke-virtual {v8, v12, v13}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 586
    iget-object v8, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v8, v8, p3

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 587
    iget-object v8, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v8, v8, v12

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 588
    add-float/2addr v7, v2

    .line 589
    iget-object v8, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v8, v8, v12

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    int-to-float v8, v8

    add-float v19, v7, v8

    .line 591
    .end local v2    # "dimension":F
    .end local v7    # "distance":F
    .restart local v19    # "distance":F
    :cond_2c
    move-object/from16 v10, v16

    goto/16 :goto_14

    .line 643
    :cond_2d
    move/from16 v41, v3

    move-object/from16 v40, v4

    .line 643
    .end local v3    # "extraMargin":F
    .end local v4    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v37    # "numVisibleWidgets":I
    .restart local v8    # "numVisibleWidgets":I
    .local v40, "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v41, "extraMargin":F
    :goto_16
    move/from16 v8, v37

    goto/16 :goto_1d

    .line 593
    .end local v6    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v8    # "numVisibleWidgets":I
    .end local v10    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v40    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v41    # "extraMargin":F
    .restart local v3    # "extraMargin":F
    .restart local v4    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v30    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v32    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v37    # "numVisibleWidgets":I
    :cond_2e
    move-object/from16 v6, v30

    .line 593
    .end local v30    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v6    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-nez v36, :cond_30

    if-eqz v21, :cond_2f

    goto :goto_17

    .line 643
    :cond_2f
    move/from16 v41, v3

    move-object/from16 v40, v4

    move-object/from16 v10, v32

    goto :goto_16

    .line 594
    :cond_30
    :goto_17
    if-eqz v36, :cond_31

    .line 595
    sub-float v19, v19, v3

    goto :goto_18

    .line 596
    :cond_31
    if-eqz v21, :cond_32

    .line 597
    sub-float v19, v19, v3

    .line 599
    :cond_32
    :goto_18
    move-object v2, v4

    .line 600
    .end local v32    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v2, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    add-int/lit8 v8, v37, 0x1

    int-to-float v7, v8

    div-float v7, v19, v7

    .line 601
    .local v7, "gap":F
    if-eqz v21, :cond_34

    .line 602
    move/from16 v8, v37

    const/4 v10, 0x1

    if-le v8, v10, :cond_33

    .line 603
    .end local v37    # "numVisibleWidgets":I
    .restart local v8    # "numVisibleWidgets":I
    add-int/lit8 v10, v8, -0x1

    int-to-float v10, v10

    div-float v7, v19, v10

    goto :goto_19

    .line 605
    :cond_33
    const/high16 v10, 0x40000000    # 2.0f

    div-float v7, v19, v10

    goto :goto_19

    .line 608
    .end local v8    # "numVisibleWidgets":I
    .restart local v37    # "numVisibleWidgets":I
    :cond_34
    move/from16 v8, v37

    .line 608
    .end local v37    # "numVisibleWidgets":I
    .restart local v8    # "numVisibleWidgets":I
    :goto_19
    add-float v13, v38, v7

    .line 609
    .end local v19    # "distance":F
    .restart local v13    # "distance":F
    if-eqz v21, :cond_35

    const/4 v10, 0x1

    if-le v8, v10, :cond_35

    .line 610
    iget-object v10, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v10, v10, p3

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v10

    int-to-float v10, v10

    add-float v13, v38, v10

    .line 612
    :cond_35
    if-eqz v36, :cond_36

    .line 613
    if-eqz v4, :cond_36

    .line 614
    iget-object v10, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v10, v10, p3

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v13, v10

    .line 617
    .end local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v10    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_36
    move-object v10, v2

    :goto_1a
    if-eqz v10, :cond_3b

    .line 618
    sget-object v2, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v2, :cond_37

    .line 619
    sget-object v2, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    move/from16 v41, v3

    move-object/from16 v40, v4

    iget-wide v3, v2, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    .line 619
    .end local v3    # "extraMargin":F
    .end local v4    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v40    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v41    # "extraMargin":F
    sub-long v3, v3, v26

    iput-wide v3, v2, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    .line 620
    sget-object v2, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v3, v2, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    add-long v3, v3, v26

    iput-wide v3, v2, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    .line 621
    sget-object v2, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v3, v2, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    add-long v3, v3, v26

    iput-wide v3, v2, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    goto :goto_1b

    .line 623
    .end local v40    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v41    # "extraMargin":F
    .restart local v3    # "extraMargin":F
    .restart local v4    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_37
    move/from16 v41, v3

    move-object/from16 v40, v4

    .line 623
    .end local v3    # "extraMargin":F
    .end local v4    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v40    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v41    # "extraMargin":F
    :goto_1b
    iget-object v2, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v16, v2, p2

    .line 624
    if-nez v16, :cond_38

    if-ne v10, v5, :cond_3a

    .line 625
    :cond_38
    const/4 v2, 0x0

    .line 626
    .local v2, "dimension":F
    if-nez p2, :cond_39

    .line 627
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    int-to-float v2, v3

    goto :goto_1c

    .line 629
    :cond_39
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    int-to-float v2, v3

    .line 631
    :goto_1c
    iget-object v3, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v3

    iget-object v4, v9, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    invoke-virtual {v3, v4, v13}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 633
    iget-object v3, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v4, p3, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v3

    iget-object v4, v9, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    add-float v12, v13, v2

    invoke-virtual {v3, v4, v12}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 635
    iget-object v3, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 636
    iget-object v3, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v4, p3, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 637
    add-float v3, v2, v7

    add-float/2addr v13, v3

    .line 639
    .end local v2    # "dimension":F
    :cond_3a
    move-object/from16 v10, v16

    .line 617
    move-object/from16 v4, v40

    move/from16 v3, v41

    goto :goto_1a

    .line 643
    .end local v7    # "gap":F
    .end local v40    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v41    # "extraMargin":F
    .restart local v3    # "extraMargin":F
    .restart local v4    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_3b
    move/from16 v41, v3

    move-object/from16 v40, v4

    move/from16 v19, v13

    .line 643
    .end local v3    # "extraMargin":F
    .end local v4    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v13    # "distance":F
    .restart local v19    # "distance":F
    .restart local v40    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v41    # "extraMargin":F
    :goto_1d
    const/4 v2, 0x1

    return v2

    .line 479
    .end local v19    # "distance":F
    .end local v29    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v31    # "lastOffset":F
    .end local v33    # "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v36    # "isChainSpread":Z
    .end local v38    # "firstOffset":F
    .end local v39    # "numMatchConstraints":I
    .end local v40    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v41    # "extraMargin":F
    .local v2, "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v4    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v6, "numMatchConstraints":I
    .local v7, "isChainSpread":Z
    .restart local v12    # "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .local v13, "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_3c
    move-object/from16 v40, v4

    move/from16 v39, v6

    move/from16 v36, v7

    move-object/from16 v32, v10

    move-object/from16 v33, v12

    move-object/from16 v29, v13

    move-object v6, v2

    .line 479
    .end local v2    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v4    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v7    # "isChainSpread":Z
    .end local v10    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v12    # "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v13    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v6, "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v29    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v32    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v33    # "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .restart local v36    # "isChainSpread":Z
    .restart local v39    # "numMatchConstraints":I
    .restart local v40    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_1e
    return v15
.end method

.method static checkMatchParent(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 5
    .param p0, "container"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p2, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 56
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x2

    if-eq v0, v2, :cond_0

    iget-object v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v1

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_0

    .line 59
    iget-object v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 60
    .local v0, "left":I
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v1

    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    sub-int/2addr v1, v2

    .line 67
    .local v1, "right":I
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    iput-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 68
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    iput-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 69
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v2, v0}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 70
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v2, v1}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 71
    iput v3, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 73
    invoke-virtual {p2, v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimension(II)V

    .line 75
    .end local v0    # "left":I
    .end local v1    # "right":I
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v0, v2, :cond_3

    iget-object v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v1

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_3

    .line 78
    iget-object v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 79
    .local v0, "top":I
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v1

    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    sub-int/2addr v1, v2

    .line 86
    .local v1, "bottom":I
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    iput-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 87
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    iput-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 88
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v2, v0}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 89
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v2, v1}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 90
    iget v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-gtz v2, :cond_1

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_2

    .line 91
    :cond_1
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    iput-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 92
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    add-int/2addr v4, v0

    invoke-virtual {p1, v2, v4}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 94
    :cond_2
    iput v3, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 96
    invoke-virtual {p2, v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimension(II)V

    .line 98
    .end local v0    # "top":I
    .end local v1    # "bottom":I
    :cond_3
    return-void
.end method

.method private static optimizableMatchConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)Z
    .locals 3
    .param p0, "constraintWidget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p1, "orientation"    # I

    .line 110
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, p1

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 111
    return v2

    .line 113
    :cond_0
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 114
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    aget-object v0, v0, v1

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_2

    .line 116
    return v2

    .line 119
    :cond_2
    return v2

    .line 121
    :cond_3
    if-nez p1, :cond_6

    .line 122
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-eqz v0, :cond_4

    .line 123
    return v2

    .line 125
    :cond_4
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-nez v0, :cond_5

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-eqz v0, :cond_8

    .line 126
    :cond_5
    return v2

    .line 129
    :cond_6
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eqz v0, :cond_7

    .line 130
    return v2

    .line 132
    :cond_7
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-nez v0, :cond_9

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-eqz v0, :cond_8

    goto :goto_1

    .line 136
    :cond_8
    return v1

    .line 133
    :cond_9
    :goto_1
    return v2
.end method
