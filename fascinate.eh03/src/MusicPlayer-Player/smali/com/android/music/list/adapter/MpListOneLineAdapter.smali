.class public Lcom/android/music/list/adapter/MpListOneLineAdapter;
.super Lcom/android/music/list/adapter/AbstractMpListAdapter;
.source "MpListOneLineAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 0
    .parameter "context"
    .parameter "c"
    .parameter "hasCheck"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/android/music/list/adapter/AbstractMpListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 21
    return-void
.end method


# virtual methods
.method protected SetImageViewRedraw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "dbid"
    .parameter "path"
    .parameter "index"
    .parameter "tag"

    .prologue
    .line 119
    return-void
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 15
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 26
    const-string v13, "_id"

    move-object/from16 v0, p3

    move-object v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p3

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 27
    .local v7, itemid:I
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v9

    .line 29
    .local v9, pos:I
    const/16 v13, -0x3e7

    if-ne v7, v13, :cond_1

    if-nez v9, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    if-eqz p1, :cond_0

    .line 38
    const v13, 0x7f0c0049

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 39
    .local v12, textView:Landroid/widget/TextView;
    const v13, 0x7f0c0046

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/music/list/view/MpView;

    .line 41
    .local v5, imageView:Lcom/android/music/list/view/MpView;
    iget-object v13, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mColumns:[Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    move-object/from16 v0, p3

    move-object v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p3

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    const-string v11, ""

    .line 47
    .local v11, subTag:Ljava/lang/String;
    iget-object v13, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v13, v13, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    if-eqz v13, :cond_2

    iget-object v13, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v13, v13, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const-string v14, "-1"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 49
    iget-object v13, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v13, v13, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    const/4 v14, 0x1

    aget-object v11, v13, v14

    .line 51
    :cond_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "view_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 52
    .local v8, myVierTag:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v14}, Lcom/android/music/list/view/AbstractMpListView;->getListType()I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 53
    .local v6, imageViewTag:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TagBack"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, imageBackViewTag:Ljava/lang/String;
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Lcom/android/music/list/view/MpView;->SetProgressBarStartPosition(I)V

    .line 55
    iget-boolean v13, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mHasCheck:Z

    if-nez v13, :cond_3

    .line 57
    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 58
    invoke-virtual {v5, v4}, Lcom/android/music/list/view/MpView;->setTag(Ljava/lang/Object;)V

    .line 59
    invoke-virtual {v5, v6}, Lcom/android/music/list/view/MpView;->SetIdIndex(Ljava/lang/String;)V

    .line 64
    :cond_3
    iget-boolean v13, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mHasCheck:Z

    if-eqz v13, :cond_0

    if-eqz p1, :cond_0

    .line 65
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v10

    .line 66
    .local v10, position:I
    const v13, 0x7f0c0047

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 67
    .local v2, check:Landroid/widget/CheckBox;
    const v13, 0x7f0c0048

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 82
    .local v3, image:Landroid/widget/ImageView;
    const/16 v13, 0x8

    invoke-virtual {v3, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 85
    iget-object v13, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mChecked:[Z

    aget-boolean v13, v13, v10

    invoke-virtual {v2, v13}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 86
    new-instance v13, Lcom/android/music/list/adapter/AbstractMpListAdapter$CheckBoxChangedListener;

    invoke-direct {v13, p0, v10}, Lcom/android/music/list/adapter/AbstractMpListAdapter$CheckBoxChangedListener;-><init>(Lcom/android/music/list/adapter/AbstractMpListAdapter;I)V

    invoke-virtual {v2, v13}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    .line 97
    const-string v4, "_id"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/16 v5, -0x3e7

    if-ne v4, v5, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    if-nez v4, :cond_0

    .line 98
    new-instance v4, Landroid/view/View;

    iget-object v5, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v4, p0}, Lcom/android/music/list/adapter/MpListOneLineAdapter;->getSelectAllView(Landroid/view/View;Lcom/android/music/list/interfaces/MpCheckBoxControlInterface;)Landroid/view/View;

    move-result-object v4

    .line 113
    :goto_0
    return-object v4

    .line 101
    :cond_0
    iget-object v4, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030013

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 102
    .local v3, view:Landroid/view/View;
    const v4, 0x7f0c0049

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 103
    .local v2, textView:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mColumns:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-boolean v4, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mHasCheck:Z

    if-eqz v4, :cond_1

    .line 106
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .line 107
    .local v1, position:I
    const v4, 0x7f0c0047

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 108
    .local v0, check:Landroid/widget/CheckBox;
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 109
    iget-object v4, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mChecked:[Z

    aget-boolean v4, v4, v1

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 110
    new-instance v4, Lcom/android/music/list/adapter/AbstractMpListAdapter$CheckBoxChangedListener;

    invoke-direct {v4, p0, v1}, Lcom/android/music/list/adapter/AbstractMpListAdapter$CheckBoxChangedListener;-><init>(Lcom/android/music/list/adapter/AbstractMpListAdapter;I)V

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    .end local v0           #check:Landroid/widget/CheckBox;
    .end local v1           #position:I
    :cond_1
    invoke-virtual {v3, v7}, Landroid/view/View;->setId(I)V

    move-object v4, v3

    .line 113
    goto :goto_0
.end method

.method public reset(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Lcom/android/music/list/adapter/MpListOneLineAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 130
    return-void
.end method

.method public setColumn([Ljava/lang/String;)V
    .locals 0
    .parameter "columns"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mColumns:[Ljava/lang/String;

    .line 125
    return-void
.end method
