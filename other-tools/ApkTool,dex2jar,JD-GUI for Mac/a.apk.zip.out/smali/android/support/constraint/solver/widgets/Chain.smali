.class Landroid/support/constraint/solver/widgets/Chain;
.super Ljava/lang/Object;
.source "Chain.java"


# static fields
.field private static final DEBUG:Z = false


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyChainConstraints(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;I)V
    .locals 6
    .param p0, "constraintWidgetContainer"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p2, "orientation"    # I

    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, "offset":I
    const/4 v1, 0x0

    .line 48
    .local v1, "chainsSize":I
    const/4 v2, 0x0

    .line 49
    .local v2, "chainsArray":[Landroid/support/constraint/solver/widgets/ChainHead;
    if-nez p2, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 51
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 52
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroid/support/constraint/solver/widgets/ChainHead;

    goto :goto_0

    .line 54
    :cond_0
    const/4 v0, 0x2

    .line 55
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 56
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroid/support/constraint/solver/widgets/ChainHead;

    .line 59
    :goto_0
    const/4 v3, 0x0

    .line 59
    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 60
    aget-object v4, v2, v3

    .line 63
    .local v4, "first":Landroid/support/constraint/solver/widgets/ChainHead;
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ChainHead;->define()V

    .line 64
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 65
    invoke-static {p0, p1, p2, v0, v4}, Landroid/support/constraint/solver/widgets/Optimizer;->applyChainOptimized(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;IILandroid/support/constraint/solver/widgets/ChainHead;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 66
    invoke-static {p0, p1, p2, v0, v4}, Landroid/support/constraint/solver/widgets/Chain;->applyChainConstraints(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;IILandroid/support/constraint/solver/widgets/ChainHead;)V

    goto :goto_2

    .line 69
    :cond_1
    invoke-static {p0, p1, p2, v0, v4}, Landroid/support/constraint/solver/widgets/Chain;->applyChainConstraints(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;IILandroid/support/constraint/solver/widgets/ChainHead;)V

    .line 59
    .end local v4    # "first":Landroid/support/constraint/solver/widgets/ChainHead;
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 72
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method static applyChainConstraints(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;IILandroid/support/constraint/solver/widgets/ChainHead;)V
    .locals 61
    .param p0, "container"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p2, "orientation"    # I
    .param p3, "offset"    # I
    .param p4, "chainHead"    # Landroid/support/constraint/solver/widgets/ChainHead;

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    .line 86
    move-object/from16 v12, p4

    iget-object v13, v12, Landroid/support/constraint/solver/widgets/ChainHead;->mFirst:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 87
    .local v13, "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v14, v12, Landroid/support/constraint/solver/widgets/ChainHead;->mLast:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 88
    .local v14, "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v9, v12, Landroid/support/constraint/solver/widgets/ChainHead;->mFirstVisibleWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 89
    .local v9, "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v8, v12, Landroid/support/constraint/solver/widgets/ChainHead;->mLastVisibleWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 90
    .local v8, "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v7, v12, Landroid/support/constraint/solver/widgets/ChainHead;->mHead:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 92
    .local v7, "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object v1, v13

    .line 93
    .local v1, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v2, 0x0

    .line 94
    .local v2, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v3, 0x0

    .line 96
    .local v3, "done":Z
    iget v4, v12, Landroid/support/constraint/solver/widgets/ChainHead;->mTotalWeight:F

    .line 97
    .local v4, "totalWeights":F
    iget-object v6, v12, Landroid/support/constraint/solver/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 98
    .local v6, "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v5, v12, Landroid/support/constraint/solver/widgets/ChainHead;->mLastMatchConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 100
    .local v5, "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object v15, v1

    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 100
    .end local v1    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v15, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    aget-object v1, v1, p2

    move-object/from16 v16, v2

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 100
    .end local v2    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v16, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move/from16 v17, v3

    .line 100
    .end local v3    # "done":Z
    .local v17, "done":Z
    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move/from16 v19, v1

    .line 101
    .local v19, "isWrapContent":Z
    const/4 v1, 0x0

    .line 102
    .local v1, "isChainSpread":Z
    const/4 v2, 0x0

    .line 103
    .local v2, "isChainSpreadInside":Z
    const/16 v20, 0x0

    .line 105
    .local v20, "isChainPacked":Z
    if-nez p2, :cond_4

    .line 106
    iget v3, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    move v1, v3

    .line 107
    iget v3, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    move/from16 v23, v1

    const/4 v1, 0x1

    if-ne v3, v1, :cond_2

    .line 107
    .end local v1    # "isChainSpread":Z
    .local v23, "isChainSpread":Z
    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 108
    .end local v2    # "isChainSpreadInside":Z
    .local v1, "isChainSpreadInside":Z
    :goto_2
    iget v2, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    .line 119
    .end local v20    # "isChainPacked":Z
    .local v2, "isChainPacked":Z
    :goto_3
    move-object v3, v15

    move-object/from16 v20, v16

    move/from16 v24, v23

    .line 119
    .end local v1    # "isChainSpreadInside":Z
    .end local v2    # "isChainPacked":Z
    .end local v23    # "isChainSpread":Z
    .local v3, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v15, "isChainPacked":Z
    .local v16, "isChainSpreadInside":Z
    .local v20, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v24, "isChainSpread":Z
    :goto_4
    move/from16 v16, v1

    move v15, v2

    goto :goto_8

    .line 110
    .end local v3    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v24    # "isChainSpread":Z
    .local v1, "isChainSpread":Z
    .local v2, "isChainSpreadInside":Z
    .local v15, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v16, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v20, "isChainPacked":Z
    :cond_4
    iget v3, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    if-nez v3, :cond_5

    const/4 v3, 0x1

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    move v1, v3

    .line 111
    iget v3, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    move/from16 v24, v1

    const/4 v1, 0x1

    if-ne v3, v1, :cond_6

    .line 111
    .end local v1    # "isChainSpread":Z
    .restart local v24    # "isChainSpread":Z
    const/4 v1, 0x1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    .line 112
    .end local v2    # "isChainSpreadInside":Z
    .local v1, "isChainSpreadInside":Z
    :goto_6
    iget v2, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    const/4 v2, 0x1

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    .line 119
    .end local v20    # "isChainPacked":Z
    .local v2, "isChainPacked":Z
    :goto_7
    move-object v3, v15

    move-object/from16 v20, v16

    goto :goto_4

    .line 119
    .end local v1    # "isChainSpreadInside":Z
    .end local v2    # "isChainPacked":Z
    .restart local v3    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v15, "isChainPacked":Z
    .local v16, "isChainSpreadInside":Z
    .local v20, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_8
    if-nez v17, :cond_15

    .line 120
    iget-object v1, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    .line 121
    .local v1, "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    const/16 v22, 0x4

    .line 122
    .local v22, "strength":I
    if-nez v19, :cond_8

    if-eqz v15, :cond_9

    .line 123
    :cond_8
    const/16 v22, 0x1

    .line 125
    :cond_9
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v23

    .line 127
    .local v23, "margin":I
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_a

    if-eq v3, v13, :cond_a

    .line 128
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    add-int v23, v23, v2

    .line 131
    .end local v23    # "margin":I
    .local v2, "margin":I
    :cond_a
    move/from16 v2, v23

    if-eqz v15, :cond_b

    if-eq v3, v13, :cond_b

    if-eq v3, v9, :cond_b

    .line 132
    const/16 v22, 0x6

    goto :goto_9

    .line 133
    :cond_b
    if-eqz v24, :cond_c

    if-eqz v19, :cond_c

    .line 136
    const/16 v22, 0x4

    .line 139
    .end local v22    # "strength":I
    .local v4, "strength":I
    .local v27, "totalWeights":F
    :cond_c
    :goto_9
    move/from16 v27, v4

    move/from16 v4, v22

    move-object/from16 v28, v5

    iget-object v5, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 139
    .end local v5    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v28, "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v5, :cond_e

    .line 140
    if-ne v3, v9, :cond_d

    .line 141
    iget-object v5, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v29, v6

    iget-object v6, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 141
    .end local v6    # "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v29, "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v30, v7

    const/4 v7, 0x5

    invoke-virtual {v10, v5, v6, v2, v7}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 141
    .end local v7    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v30, "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    goto :goto_a

    .line 144
    .end local v29    # "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v30    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v6    # "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v7    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_d
    move-object/from16 v29, v6

    move-object/from16 v30, v7

    .line 144
    .end local v6    # "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v7    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v29    # "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v30    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v5, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v6, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v7, 0x6

    invoke-virtual {v10, v5, v6, v2, v7}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 147
    :goto_a
    iget-object v5, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v6, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v10, v5, v6, v2, v4}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto :goto_b

    .line 151
    .end local v29    # "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v30    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v6    # "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v7    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_e
    move-object/from16 v29, v6

    move-object/from16 v30, v7

    .line 151
    .end local v6    # "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v7    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v29    # "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v30    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_b
    if-eqz v19, :cond_10

    .line 152
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_f

    iget-object v5, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, p2

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_f

    .line 154
    iget-object v5, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v6, p3, 0x1

    aget-object v5, v5, v6

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v6, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v31, v1

    const/4 v1, 0x5

    const/4 v7, 0x0

    invoke-virtual {v10, v5, v6, v7, v1}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_c

    .line 158
    :cond_f
    move-object/from16 v31, v1

    const/4 v7, 0x0

    .line 158
    .end local v1    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v31, "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :goto_c
    iget-object v1, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v5, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, p3

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v6, 0x6

    invoke-virtual {v10, v1, v5, v7, v6}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_d

    .line 164
    .end local v31    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v1    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_10
    move-object/from16 v31, v1

    .line 164
    .end local v1    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v31    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :goto_d
    iget-object v1, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v5, p3, 0x1

    aget-object v1, v1, v5

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 165
    .local v1, "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    if-eqz v1, :cond_12

    .line 166
    iget-object v5, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 167
    .end local v20    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v5, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_11

    iget-object v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq v6, v3, :cond_13

    .line 168
    :cond_11
    const/4 v5, 0x0

    goto :goto_e

    .line 171
    .end local v5    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v20    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_12
    const/4 v5, 0x0

    .line 173
    :cond_13
    :goto_e
    move-object/from16 v20, v5

    if-eqz v20, :cond_14

    .line 174
    move-object/from16 v3, v20

    goto :goto_f

    .line 176
    :cond_14
    const/4 v1, 0x1

    .line 178
    .end local v2    # "margin":I
    .end local v4    # "strength":I
    .end local v17    # "done":Z
    .end local v31    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v1, "done":Z
    move/from16 v17, v1

    .line 119
    .end local v1    # "done":Z
    .restart local v17    # "done":Z
    :goto_f
    move/from16 v4, v27

    move-object/from16 v5, v28

    move-object/from16 v6, v29

    move-object/from16 v7, v30

    goto/16 :goto_8

    .line 181
    .end local v27    # "totalWeights":F
    .end local v28    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v29    # "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v30    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v4, "totalWeights":F
    .local v5, "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v6    # "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v7    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_15
    move/from16 v27, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    .line 181
    .end local v4    # "totalWeights":F
    .end local v5    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v6    # "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v7    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v27    # "totalWeights":F
    .restart local v28    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v29    # "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v30    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v8, :cond_16

    iget-object v1, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_16

    .line 182
    iget-object v1, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    .line 183
    .local v1, "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v4, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v5, p3, 0x1

    aget-object v4, v4, v5

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 184
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    neg-int v5, v5

    .line 183
    const/4 v6, 0x5

    invoke-virtual {v10, v2, v4, v5, v6}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 183
    .end local v1    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    goto :goto_10

    .line 189
    :cond_16
    const/4 v6, 0x5

    :goto_10
    if-eqz v19, :cond_17

    .line 190
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v2, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v4, p3, 0x1

    aget-object v2, v2, v4

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v4, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v5, p3, 0x1

    aget-object v4, v4, v5

    .line 192
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    .line 190
    const/4 v5, 0x6

    invoke-virtual {v10, v1, v2, v4, v5}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 196
    :cond_17
    iget-object v7, v12, Landroid/support/constraint/solver/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    .line 197
    .local v7, "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    if-eqz v7, :cond_1d

    .line 198
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 199
    .local v1, "count":I
    const/4 v2, 0x1

    if-le v1, v2, :cond_1d

    .line 200
    const/4 v4, 0x0

    .line 201
    .local v4, "lastMatch":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v5, 0x0

    .line 203
    .local v5, "lastWeight":F
    iget-boolean v2, v12, Landroid/support/constraint/solver/widgets/ChainHead;->mHasUndefinedWeights:Z

    if-eqz v2, :cond_18

    iget-boolean v2, v12, Landroid/support/constraint/solver/widgets/ChainHead;->mHasComplexMatchWeights:Z

    if-nez v2, :cond_18

    .line 204
    iget v2, v12, Landroid/support/constraint/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    int-to-float v2, v2

    .line 207
    .end local v27    # "totalWeights":F
    .local v2, "totalWeights":F
    move/from16 v27, v2

    .line 207
    .end local v2    # "totalWeights":F
    .restart local v27    # "totalWeights":F
    :cond_18
    const/4 v2, 0x0

    .line 207
    .local v2, "i":I
    :goto_11
    if-ge v2, v1, :cond_1d

    .line 208
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v6, v21

    check-cast v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 209
    .local v6, "match":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v0, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    aget v0, v0, p2

    .line 211
    .local v0, "currentWeight":F
    const/16 v21, 0x0

    cmpg-float v22, v0, v21

    if-gez v22, :cond_1a

    .line 212
    move/from16 v41, v0

    iget-boolean v0, v12, Landroid/support/constraint/solver/widgets/ChainHead;->mHasComplexMatchWeights:Z

    .line 212
    .end local v0    # "currentWeight":F
    .local v41, "currentWeight":F
    if-eqz v0, :cond_19

    .line 213
    iget-object v0, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v21, p3, 0x1

    aget-object v0, v0, v21

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move/from16 v42, v1

    iget-object v1, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 213
    .end local v1    # "count":I
    .local v42, "count":I
    aget-object v1, v1, p3

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v43, v3

    const/4 v3, 0x4

    .line 213
    .end local v3    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v43, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v44, v7

    const/4 v7, 0x0

    invoke-virtual {v10, v0, v1, v7, v3}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 215
    .end local v7    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .local v44, "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    nop

    .line 207
    const/4 v3, 0x0

    const/4 v7, 0x6

    goto/16 :goto_14

    .line 217
    .end local v42    # "count":I
    .end local v43    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v44    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .restart local v1    # "count":I
    .restart local v3    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v7    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    :cond_19
    move/from16 v42, v1

    move-object/from16 v43, v3

    move-object/from16 v44, v7

    .line 217
    .end local v1    # "count":I
    .end local v3    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v7    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .restart local v42    # "count":I
    .restart local v43    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v44    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    const/high16 v0, 0x3f800000    # 1.0f

    .line 219
    .end local v41    # "currentWeight":F
    .restart local v0    # "currentWeight":F
    move/from16 v41, v0

    goto :goto_12

    .line 219
    .end local v42    # "count":I
    .end local v43    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v44    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .restart local v1    # "count":I
    .restart local v3    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v7    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    :cond_1a
    move/from16 v41, v0

    move/from16 v42, v1

    move-object/from16 v43, v3

    move-object/from16 v44, v7

    .line 219
    .end local v0    # "currentWeight":F
    .end local v1    # "count":I
    .end local v3    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v7    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .restart local v41    # "currentWeight":F
    .restart local v42    # "count":I
    .restart local v43    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v44    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    :goto_12
    cmpl-float v0, v41, v21

    if-nez v0, :cond_1b

    .line 220
    iget-object v0, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v1, p3, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v1, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v3, 0x0

    const/4 v7, 0x6

    invoke-virtual {v10, v0, v1, v3, v7}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 222
    goto :goto_14

    .line 225
    :cond_1b
    const/4 v3, 0x0

    const/4 v7, 0x6

    if-eqz v4, :cond_1c

    .line 226
    iget-object v0, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 227
    .local v0, "begin":Landroid/support/constraint/solver/SolverVariable;
    iget-object v1, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v18, p3, 0x1

    aget-object v1, v1, v18

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 228
    .local v1, "end":Landroid/support/constraint/solver/SolverVariable;
    iget-object v3, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 229
    .local v3, "nextBegin":Landroid/support/constraint/solver/SolverVariable;
    iget-object v7, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v18, p3, 0x1

    aget-object v7, v7, v18

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 230
    .local v7, "nextEnd":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v46, v4

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v4

    .line 231
    .local v4, "row":Landroid/support/constraint/solver/ArrayRow;
    .local v46, "lastMatch":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v33, v4

    move/from16 v34, v5

    move/from16 v35, v27

    move/from16 v36, v41

    move-object/from16 v37, v0

    move-object/from16 v38, v1

    move-object/from16 v39, v3

    move-object/from16 v40, v7

    invoke-virtual/range {v33 .. v40}, Landroid/support/constraint/solver/ArrayRow;->createRowEqualMatchDimensions(FFFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;)Landroid/support/constraint/solver/ArrayRow;

    .line 233
    invoke-virtual {v10, v4}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 233
    .end local v0    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .end local v1    # "end":Landroid/support/constraint/solver/SolverVariable;
    .end local v3    # "nextBegin":Landroid/support/constraint/solver/SolverVariable;
    .end local v4    # "row":Landroid/support/constraint/solver/ArrayRow;
    .end local v7    # "nextEnd":Landroid/support/constraint/solver/SolverVariable;
    goto :goto_13

    .line 236
    .end local v46    # "lastMatch":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v4, "lastMatch":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_1c
    move-object/from16 v46, v4

    .line 236
    .end local v4    # "lastMatch":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v46    # "lastMatch":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_13
    move-object v0, v6

    .line 237
    .end local v46    # "lastMatch":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v0, "lastMatch":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move/from16 v1, v41

    .line 207
    .end local v5    # "lastWeight":F
    .end local v6    # "match":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v41    # "currentWeight":F
    .local v1, "lastWeight":F
    move-object v4, v0

    move v5, v1

    .line 207
    .end local v0    # "lastMatch":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v1    # "lastWeight":F
    .restart local v4    # "lastMatch":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v5    # "lastWeight":F
    :goto_14
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v42

    move-object/from16 v3, v43

    move-object/from16 v7, v44

    move-object/from16 v0, p0

    const/4 v6, 0x5

    goto/16 :goto_11

    .line 254
    .end local v2    # "i":I
    .end local v4    # "lastMatch":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v5    # "lastWeight":F
    .end local v42    # "count":I
    .end local v43    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v44    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .local v3, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v7, "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    :cond_1d
    move-object/from16 v43, v3

    move-object/from16 v44, v7

    .line 254
    .end local v3    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v7    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .restart local v43    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v44    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    if-eqz v9, :cond_25

    if-eq v9, v8, :cond_1f

    if-eqz v15, :cond_1e

    goto :goto_15

    .line 275
    :cond_1e
    move-object v0, v8

    move-object v10, v9

    move-object/from16 v33, v28

    move-object/from16 v28, v30

    move-object/from16 v30, v43

    move-object/from16 v34, v44

    goto/16 :goto_1b

    .line 255
    :cond_1f
    :goto_15
    iget-object v1, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    .line 256
    .local v1, "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v2, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    .line 257
    .local v2, "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v3, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_20

    iget-object v3, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_16

    :cond_20
    const/4 v3, 0x0

    :goto_16
    move-object/from16 v18, v3

    .line 258
    .local v18, "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    iget-object v3, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v4, p3, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_21

    iget-object v3, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v4, p3, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_17

    :cond_21
    const/4 v3, 0x0

    :goto_17
    move-object/from16 v21, v3

    .line 259
    .local v21, "endTarget":Landroid/support/constraint/solver/SolverVariable;
    if-ne v9, v8, :cond_22

    .line 260
    iget-object v3, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v3, p3

    .line 261
    iget-object v3, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v4, p3, 0x1

    aget-object v2, v3, v4

    .line 263
    .end local v1    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v2    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v6, "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v7, "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_22
    move-object v7, v1

    move-object v6, v2

    if-eqz v18, :cond_24

    if-eqz v21, :cond_24

    .line 264
    const/high16 v1, 0x3f000000    # 0.5f

    .line 265
    .local v1, "bias":F
    if-nez p2, :cond_23

    .line 266
    move-object/from16 v5, v30

    iget v1, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 270
    .end local v1    # "bias":F
    .end local v30    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v5, "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v22, "bias":F
    :goto_18
    move/from16 v22, v1

    goto :goto_19

    .line 268
    .end local v5    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v22    # "bias":F
    .restart local v1    # "bias":F
    .restart local v30    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_23
    move-object/from16 v5, v30

    .line 268
    .end local v30    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v5    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget v1, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    goto :goto_18

    .line 270
    .end local v1    # "bias":F
    .restart local v22    # "bias":F
    :goto_19
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v23

    .line 271
    .local v23, "beginMargin":I
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v25

    .line 272
    .local v25, "endMargin":I
    iget-object v2, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v4, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/16 v26, 0x5

    move-object v1, v10

    move-object/from16 v30, v43

    move-object/from16 v3, v18

    .line 272
    .end local v43    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v30, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v31, v4

    move/from16 v4, v23

    move-object/from16 v33, v28

    move-object/from16 v28, v5

    move/from16 v5, v22

    .line 272
    .end local v5    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v28, "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v33, "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v32, v6

    move-object/from16 v6, v21

    .line 272
    .end local v6    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v32, "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object/from16 v35, v7

    move-object/from16 v34, v44

    move-object/from16 v7, v31

    .line 272
    .end local v7    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v44    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .local v34, "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .local v35, "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object v0, v8

    move/from16 v8, v25

    .line 272
    .end local v8    # "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v0, "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object v10, v9

    move/from16 v9, v26

    .line 272
    .end local v9    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v10, "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual/range {v1 .. v9}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 272
    .end local v18    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v21    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v22    # "bias":F
    .end local v23    # "beginMargin":I
    .end local v25    # "endMargin":I
    .end local v32    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v35    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    goto :goto_1a

    .line 275
    .end local v0    # "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v10    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v33    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v34    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .restart local v8    # "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v9    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v28, "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v30, "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v43    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v44    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    :cond_24
    move-object v0, v8

    move-object v10, v9

    move-object/from16 v33, v28

    move-object/from16 v28, v30

    move-object/from16 v30, v43

    move-object/from16 v34, v44

    .line 408
    .end local v8    # "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v9    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v43    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v44    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .restart local v0    # "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v10    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v28, "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v30, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v33    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v34    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    :goto_1a
    move-object/from16 v59, v14

    move-object v14, v10

    move-object/from16 v10, p1

    goto/16 :goto_2e

    .line 275
    .end local v0    # "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v10    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v33    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v34    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .restart local v8    # "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v9    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v28, "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v30, "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v43    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v44    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    :cond_25
    move-object v0, v8

    move-object v10, v9

    move-object/from16 v33, v28

    move-object/from16 v28, v30

    move-object/from16 v30, v43

    move-object/from16 v34, v44

    .line 275
    .end local v8    # "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v9    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v43    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v44    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .restart local v0    # "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v10    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v28, "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v30, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v33    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v34    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    :goto_1b
    if-eqz v24, :cond_36

    if-eqz v10, :cond_36

    .line 277
    move-object v1, v10

    .line 278
    .end local v30    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v1, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object v2, v10

    .line 279
    .local v2, "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget v3, v12, Landroid/support/constraint/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    if-lez v3, :cond_26

    iget v3, v12, Landroid/support/constraint/solver/widgets/ChainHead;->mWidgetsCount:I

    iget v4, v12, Landroid/support/constraint/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    if-ne v3, v4, :cond_26

    const/16 v45, 0x1

    goto :goto_1c

    :cond_26
    const/16 v45, 0x0

    :goto_1c
    move-object v9, v1

    move-object v8, v2

    .line 280
    .end local v1    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v2    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v8, "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v9, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v45, "applyFixedEquality":Z
    :goto_1d
    if-eqz v9, :cond_35

    .line 281
    iget-object v1, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v7, v1, p2

    .line 282
    .end local v20    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v7, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-nez v7, :cond_28

    if-ne v9, v0, :cond_27

    goto :goto_1e

    .line 334
    :cond_27
    move-object/from16 v35, v7

    move-object/from16 v36, v8

    move-object/from16 v37, v9

    move-object/from16 v53, v14

    move-object v14, v10

    move-object/from16 v10, p1

    goto/16 :goto_25

    .line 283
    :cond_28
    :goto_1e
    iget-object v1, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v1, p3

    .line 284
    .local v6, "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v5, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 285
    .local v5, "begin":Landroid/support/constraint/solver/SolverVariable;
    iget-object v1, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_29

    iget-object v1, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_1f

    :cond_29
    const/4 v1, 0x0

    .line 286
    .local v1, "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    :goto_1f
    if-eq v8, v9, :cond_2b

    .line 287
    iget-object v2, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v1, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 292
    .end local v1    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v18    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    :cond_2a
    :goto_20
    move-object/from16 v18, v1

    goto :goto_22

    .line 288
    .end local v18    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v1    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    :cond_2b
    if-ne v9, v10, :cond_2a

    if-ne v8, v9, :cond_2a

    .line 289
    iget-object v2, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_2c

    iget-object v2, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_21

    :cond_2c
    const/4 v2, 0x0

    :goto_21
    move-object v1, v2

    goto :goto_20

    .line 292
    .end local v1    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v18    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    :goto_22
    const/4 v1, 0x0

    .line 293
    .local v1, "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    const/4 v2, 0x0

    .line 294
    .local v2, "beginNext":Landroid/support/constraint/solver/SolverVariable;
    const/4 v3, 0x0

    .line 295
    .local v3, "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    .line 296
    .local v4, "beginMargin":I
    move-object/from16 v48, v1

    iget-object v1, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 296
    .end local v1    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v48, "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    add-int/lit8 v20, p3, 0x1

    aget-object v1, v1, v20

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    .line 298
    .local v1, "nextMargin":I
    if-eqz v7, :cond_2d

    .line 299
    move-object/from16 v49, v2

    iget-object v2, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 299
    .end local v2    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .local v49, "beginNext":Landroid/support/constraint/solver/SolverVariable;
    aget-object v2, v2, p3

    .line 300
    .end local v48    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v2, "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object/from16 v50, v3

    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 301
    .end local v49    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .local v3, "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .local v50, "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v51, v2

    iget-object v2, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 301
    .end local v2    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v51, "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    add-int/lit8 v20, p3, 0x1

    aget-object v2, v2, v20

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 310
    .end local v50    # "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v2, "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v21, v2

    move-object/from16 v20, v3

    move-object/from16 v3, v51

    goto :goto_24

    .line 303
    .end local v51    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v2, "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .local v3, "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v48    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_2d
    move-object/from16 v49, v2

    move-object/from16 v50, v3

    .line 303
    .end local v2    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .end local v3    # "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v49    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .restart local v50    # "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    iget-object v2, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 304
    .end local v48    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v2, "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    if-eqz v2, :cond_2e

    .line 305
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 305
    .end local v49    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .local v3, "beginNext":Landroid/support/constraint/solver/SolverVariable;
    goto :goto_23

    .line 307
    .end local v3    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .restart local v49    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    :cond_2e
    move-object/from16 v3, v49

    .line 307
    .end local v49    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .restart local v3    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    :goto_23
    move-object/from16 v52, v2

    iget-object v2, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 307
    .end local v2    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v52, "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    add-int/lit8 v20, p3, 0x1

    aget-object v2, v2, v20

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 310
    .end local v50    # "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v2, "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v21, v2

    move-object/from16 v20, v3

    move-object/from16 v3, v52

    .line 310
    .end local v2    # "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v52    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v3, "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v20, "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .local v21, "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    :goto_24
    if-eqz v3, :cond_2f

    .line 311
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    add-int/2addr v1, v2

    .line 313
    .end local v1    # "nextMargin":I
    .local v22, "nextMargin":I
    :cond_2f
    move/from16 v22, v1

    if-eqz v8, :cond_30

    .line 314
    iget-object v1, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    add-int/2addr v4, v1

    .line 316
    .end local v4    # "beginMargin":I
    .restart local v23    # "beginMargin":I
    :cond_30
    move/from16 v23, v4

    if-eqz v5, :cond_34

    if-eqz v18, :cond_34

    if-eqz v20, :cond_34

    if-eqz v21, :cond_34

    .line 317
    move/from16 v1, v23

    .line 318
    .local v1, "margin1":I
    if-ne v9, v10, :cond_31

    .line 319
    iget-object v2, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    .line 321
    .end local v1    # "margin1":I
    .local v25, "margin1":I
    :cond_31
    move/from16 v25, v1

    move/from16 v1, v22

    .line 322
    .local v1, "margin2":I
    if-ne v9, v0, :cond_32

    .line 323
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v4, p3, 0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    .line 325
    .end local v1    # "margin2":I
    .local v26, "margin2":I
    :cond_32
    move/from16 v26, v1

    const/4 v1, 0x4

    .line 326
    .local v1, "strength":I
    if-eqz v45, :cond_33

    .line 327
    const/4 v1, 0x6

    .line 329
    .end local v1    # "strength":I
    .local v30, "strength":I
    :cond_33
    move/from16 v30, v1

    const/high16 v31, 0x3f000000    # 0.5f

    move-object v4, v10

    move-object/from16 v10, p1

    move-object v1, v10

    .line 329
    .end local v10    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v4, "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object v2, v5

    move-object/from16 v52, v3

    move-object/from16 v3, v18

    .line 329
    .end local v3    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v52    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object/from16 v53, v14

    move-object v14, v4

    move/from16 v4, v25

    .line 329
    .end local v4    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v14, "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v53, "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v32, v5

    move/from16 v5, v31

    .line 329
    .end local v5    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .local v32, "begin":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v31, v6

    move-object/from16 v6, v20

    .line 329
    .end local v6    # "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v31, "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object/from16 v35, v7

    move-object/from16 v7, v21

    .line 329
    .end local v7    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v35, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v36, v8

    move/from16 v8, v26

    .line 329
    .end local v8    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v36, "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v37, v9

    move/from16 v9, v30

    .line 329
    .end local v9    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v37, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual/range {v1 .. v9}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 329
    .end local v18    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v20    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .end local v21    # "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v22    # "nextMargin":I
    .end local v23    # "beginMargin":I
    .end local v25    # "margin1":I
    .end local v26    # "margin2":I
    .end local v30    # "strength":I
    .end local v31    # "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v32    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .end local v52    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    goto :goto_25

    .line 334
    .end local v35    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v36    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v37    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v53    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v7    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v8    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v9    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v10    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v14, "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_34
    move-object/from16 v35, v7

    move-object/from16 v36, v8

    move-object/from16 v37, v9

    move-object/from16 v53, v14

    move-object v14, v10

    move-object/from16 v10, p1

    .line 334
    .end local v7    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v8    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v9    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v10    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v14, "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v35    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v36    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v37    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v53    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_25
    move-object/from16 v8, v37

    .line 335
    .end local v36    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v8    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v9, v35

    .line 279
    .end local v37    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v9    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object v10, v14

    move-object/from16 v20, v35

    move-object/from16 v14, v53

    goto/16 :goto_1d

    .line 337
    .end local v8    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v35    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v45    # "applyFixedEquality":Z
    .end local v53    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v10    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v14, "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v20, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_35
    move-object/from16 v37, v9

    move-object/from16 v53, v14

    move-object v14, v10

    move-object/from16 v10, p1

    .line 408
    .end local v9    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v10    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v14, "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v37    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v53    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v30, v37

    move-object/from16 v59, v53

    goto/16 :goto_2e

    .line 337
    .end local v37    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v53    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v10    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v14, "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v30, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_36
    move-object/from16 v53, v14

    move-object v14, v10

    move-object/from16 v10, p1

    .line 337
    .end local v10    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v14, "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v53    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v16, :cond_46

    if-eqz v14, :cond_46

    .line 339
    move-object v1, v14

    .line 340
    .end local v30    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v1, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object v2, v14

    .line 341
    .local v2, "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget v3, v12, Landroid/support/constraint/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    if-lez v3, :cond_37

    iget v3, v12, Landroid/support/constraint/solver/widgets/ChainHead;->mWidgetsCount:I

    iget v4, v12, Landroid/support/constraint/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    if-ne v3, v4, :cond_37

    const/16 v45, 0x1

    goto :goto_26

    :cond_37
    const/16 v45, 0x0

    :goto_26
    move-object v9, v1

    move-object v8, v2

    .line 342
    .end local v1    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v2    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v8    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v9    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v45    # "applyFixedEquality":Z
    :goto_27
    if-eqz v9, :cond_42

    .line 343
    iget-object v1, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v1, v1, p2

    .line 344
    .end local v20    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v1, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eq v9, v14, :cond_41

    if-eq v9, v0, :cond_41

    if-eqz v1, :cond_41

    .line 345
    if-ne v1, v0, :cond_38

    .line 346
    const/4 v1, 0x0

    .line 348
    .end local v1    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v7    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_38
    move-object v7, v1

    iget-object v1, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v1, p3

    .line 349
    .restart local v6    # "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v5, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 350
    .restart local v5    # "begin":Landroid/support/constraint/solver/SolverVariable;
    iget-object v1, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_39

    iget-object v1, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_28

    :cond_39
    const/4 v1, 0x0

    .line 351
    .local v1, "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    :goto_28
    iget-object v2, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 352
    .end local v1    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v4, "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    const/4 v1, 0x0

    .line 353
    .local v1, "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    const/4 v2, 0x0

    .line 354
    .local v2, "beginNext":Landroid/support/constraint/solver/SolverVariable;
    const/4 v3, 0x0

    .line 355
    .local v3, "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v18

    .line 356
    .local v18, "beginMargin":I
    move-object/from16 v54, v1

    iget-object v1, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 356
    .end local v1    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v54, "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    add-int/lit8 v20, p3, 0x1

    aget-object v1, v1, v20

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    .line 358
    .local v1, "nextMargin":I
    if-eqz v7, :cond_3b

    .line 359
    move-object/from16 v55, v2

    iget-object v2, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 359
    .end local v2    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .local v55, "beginNext":Landroid/support/constraint/solver/SolverVariable;
    aget-object v2, v2, p3

    .line 360
    .end local v54    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v2, "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object/from16 v56, v3

    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 361
    .end local v55    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .local v3, "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .local v56, "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v57, v3

    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 361
    .end local v3    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .local v57, "beginNext":Landroid/support/constraint/solver/SolverVariable;
    if-eqz v3, :cond_3a

    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_29

    :cond_3a
    const/4 v3, 0x0

    .line 370
    .end local v56    # "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v3, "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    :goto_29
    move-object/from16 v20, v3

    move-object/from16 v55, v57

    goto :goto_2a

    .line 363
    .end local v57    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .local v2, "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .restart local v54    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_3b
    move-object/from16 v55, v2

    move-object/from16 v56, v3

    .line 363
    .end local v2    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .end local v3    # "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v55    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .restart local v56    # "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    iget-object v2, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 364
    .end local v54    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v2, "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    if-eqz v2, :cond_3c

    .line 365
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 367
    .end local v55    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .local v3, "beginNext":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v55, v3

    .line 367
    .end local v3    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .restart local v55    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    :cond_3c
    iget-object v3, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v20, p3, 0x1

    aget-object v3, v3, v20

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 370
    .end local v56    # "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v3, "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v20, v3

    .line 370
    .end local v2    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v3, "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v20, "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    :goto_2a
    move-object v3, v2

    if-eqz v3, :cond_3d

    .line 371
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    add-int/2addr v1, v2

    .line 373
    .end local v1    # "nextMargin":I
    .local v21, "nextMargin":I
    :cond_3d
    move/from16 v21, v1

    if-eqz v8, :cond_3e

    .line 374
    iget-object v1, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    add-int v18, v18, v1

    .line 376
    :cond_3e
    const/4 v1, 0x4

    .line 377
    .local v1, "strength":I
    if-eqz v45, :cond_3f

    .line 378
    const/4 v1, 0x6

    .line 380
    .end local v1    # "strength":I
    .local v22, "strength":I
    :cond_3f
    move/from16 v22, v1

    if-eqz v5, :cond_40

    if-eqz v4, :cond_40

    if-eqz v55, :cond_40

    if-eqz v20, :cond_40

    .line 381
    const/high16 v23, 0x3f000000    # 0.5f

    move-object v1, v10

    const/4 v11, 0x5

    move-object v2, v5

    move-object/from16 v25, v3

    move-object v3, v4

    .line 381
    .end local v3    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v25, "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object/from16 v26, v4

    move/from16 v4, v18

    .line 381
    .end local v4    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v26, "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v30, v5

    move/from16 v5, v23

    .line 381
    .end local v5    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .local v30, "begin":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v23, v6

    move-object/from16 v6, v55

    .line 381
    .end local v6    # "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v23, "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object/from16 v31, v7

    move-object/from16 v7, v20

    .line 381
    .end local v7    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v31, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v32, v8

    move/from16 v8, v21

    .line 381
    .end local v8    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v32, "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v35, v9

    move/from16 v9, v22

    .line 381
    .end local v9    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v35, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual/range {v1 .. v9}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 381
    .end local v18    # "beginMargin":I
    .end local v20    # "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v21    # "nextMargin":I
    .end local v22    # "strength":I
    .end local v23    # "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v25    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v26    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v30    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .end local v55    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    goto :goto_2b

    .line 386
    .end local v31    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v32    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v35    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v7    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v8    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v9    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_40
    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v35, v9

    const/4 v11, 0x5

    .line 386
    .end local v7    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v8    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v9    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v31    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v32    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v35    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_2b
    move-object/from16 v20, v31

    goto :goto_2c

    .line 386
    .end local v31    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v32    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v35    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v1, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v8    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v9    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_41
    move-object/from16 v32, v8

    move-object/from16 v35, v9

    const/4 v11, 0x5

    .line 386
    .end local v8    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v9    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v32    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v35    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v20, v1

    .line 386
    .end local v1    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v20, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_2c
    move-object/from16 v8, v35

    .line 387
    .end local v32    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v8    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v9, v20

    .line 387
    .end local v35    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v9    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    goto/16 :goto_27

    .line 389
    :cond_42
    move-object/from16 v32, v8

    move-object/from16 v35, v9

    const/4 v11, 0x5

    .line 389
    .end local v8    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v9    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v32    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v35    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v1, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v9, v1, p3

    .line 390
    .local v9, "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v1, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 391
    .local v8, "beginTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v7, v1, v2

    .line 392
    .local v7, "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object/from16 v6, v53

    iget-object v1, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 392
    .end local v53    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v6, "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    iget-object v5, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 393
    .local v5, "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    if-eqz v8, :cond_44

    .line 394
    if-eq v14, v0, :cond_43

    .line 395
    iget-object v1, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v2, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    invoke-virtual {v10, v1, v2, v3, v11}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 401
    move-object/from16 v58, v5

    move-object/from16 v59, v6

    move-object/from16 v60, v7

    move-object v11, v8

    move-object/from16 v18, v9

    goto :goto_2d

    .line 396
    :cond_43
    if-eqz v5, :cond_44

    .line 397
    iget-object v2, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    const/high16 v18, 0x3f000000    # 0.5f

    iget-object v1, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v11, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 398
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v21

    const/16 v22, 0x5

    .line 397
    move-object/from16 v23, v1

    move-object v1, v10

    move-object/from16 v58, v5

    move/from16 v5, v18

    .line 397
    .end local v5    # "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v58, "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object/from16 v59, v6

    move-object/from16 v6, v23

    .line 397
    .end local v6    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v59, "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v60, v7

    move-object v7, v11

    .line 397
    .end local v7    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v60, "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object v11, v8

    move/from16 v8, v21

    .line 397
    .end local v8    # "beginTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v11, "beginTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object/from16 v18, v9

    move/from16 v9, v22

    .line 397
    .end local v9    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v18, "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual/range {v1 .. v9}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_2d

    .line 401
    .end local v11    # "beginTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v18    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v58    # "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v59    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v60    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v5    # "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v6    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v7    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v8    # "beginTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v9    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_44
    move-object/from16 v58, v5

    move-object/from16 v59, v6

    move-object/from16 v60, v7

    move-object v11, v8

    move-object/from16 v18, v9

    .line 401
    .end local v5    # "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v6    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v7    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v8    # "beginTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v9    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v11    # "beginTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v18    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v58    # "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v59    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v60    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :goto_2d
    move-object/from16 v1, v58

    if-eqz v1, :cond_45

    .line 401
    .end local v58    # "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v1, "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    if-eq v14, v0, :cond_45

    .line 402
    move-object/from16 v2, v60

    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 402
    .end local v60    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v2, "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v4, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    neg-int v5, v5

    const/4 v6, 0x5

    invoke-virtual {v10, v3, v4, v5, v6}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 408
    .end local v1    # "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v2    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v11    # "beginTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v18    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v32    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v45    # "applyFixedEquality":Z
    :cond_45
    move-object/from16 v30, v35

    goto :goto_2e

    .line 408
    .end local v35    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v59    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v30, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v53    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_46
    move-object/from16 v59, v53

    .line 408
    .end local v53    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v59    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_2e
    if-nez v24, :cond_48

    if-eqz v16, :cond_47

    goto :goto_2f

    .line 433
    :cond_47
    move-object/from16 v32, v59

    goto/16 :goto_33

    .line 408
    :cond_48
    :goto_2f
    if-eqz v14, :cond_50

    .line 409
    iget-object v1, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    .line 410
    .local v1, "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    .line 411
    .restart local v2    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_49

    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_30

    :cond_49
    const/4 v3, 0x0

    :goto_30
    move-object v11, v3

    .line 412
    .local v11, "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_4a

    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_31

    :cond_4a
    const/4 v3, 0x0

    .line 413
    .local v3, "endTarget":Landroid/support/constraint/solver/SolverVariable;
    :goto_31
    move-object/from16 v9, v59

    if-eq v9, v0, :cond_4c

    .line 414
    .end local v59    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v9, "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v4, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v5, p3, 0x1

    aget-object v4, v4, v5

    .line 415
    .local v4, "realEnd":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v5, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_4b

    iget-object v5, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v47, v5

    goto :goto_32

    :cond_4b
    const/16 v47, 0x0

    :goto_32
    move-object/from16 v3, v47

    .line 417
    .end local v3    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v4    # "realEnd":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v18, "endTarget":Landroid/support/constraint/solver/SolverVariable;
    :cond_4c
    move-object/from16 v18, v3

    if-ne v14, v0, :cond_4d

    .line 418
    iget-object v3, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v3, p3

    .line 419
    iget-object v3, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v4, p3, 0x1

    aget-object v2, v3, v4

    .line 421
    .end local v1    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v2    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v7    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v8, "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_4d
    move-object v8, v1

    move-object v7, v2

    if-eqz v11, :cond_4f

    if-eqz v18, :cond_4f

    .line 422
    const/high16 v21, 0x3f000000    # 0.5f

    .line 423
    .local v21, "bias":F
    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v22

    .line 424
    .local v22, "beginMargin":I
    if-nez v0, :cond_4e

    .line 426
    move-object v0, v9

    .line 428
    :cond_4e
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v23

    .line 429
    .local v23, "endMargin":I
    iget-object v2, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v6, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/16 v25, 0x5

    move-object v1, v10

    move-object v3, v11

    move/from16 v4, v22

    move/from16 v5, v21

    move-object/from16 v26, v6

    move-object/from16 v6, v18

    move-object/from16 v31, v7

    move-object/from16 v7, v26

    .line 429
    .end local v7    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v31, "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object/from16 v26, v8

    move/from16 v8, v23

    .line 429
    .end local v8    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v26, "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object/from16 v32, v9

    move/from16 v9, v25

    .line 429
    .end local v9    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v32, "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual/range {v1 .. v9}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 429
    .end local v11    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v18    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v21    # "bias":F
    .end local v22    # "beginMargin":I
    .end local v23    # "endMargin":I
    .end local v26    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v31    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    goto :goto_33

    .line 433
    .end local v32    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v9    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_4f
    move-object/from16 v32, v9

    .line 433
    .end local v9    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v32    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    goto :goto_33

    .line 433
    .end local v32    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v59    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_50
    move-object/from16 v32, v59

    .line 433
    .end local v59    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v32    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_33
    return-void
.end method
