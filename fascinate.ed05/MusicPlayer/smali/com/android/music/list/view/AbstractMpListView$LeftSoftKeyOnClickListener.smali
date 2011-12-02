.class Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;
.super Ljava/lang/Object;
.source "AbstractMpListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/list/view/AbstractMpListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LeftSoftKeyOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/list/view/AbstractMpListView;


# direct methods
.method public constructor <init>(Lcom/android/music/list/view/AbstractMpListView;)V
    .locals 0
    .parameter

    .prologue
    .line 2134
    iput-object p1, p0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2136
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 20
    .parameter "v"

    .prologue
    .line 2139
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "onClick (Left Softkey)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v12

    .line 2141
    .local v12, adapter:Landroid/widget/ListAdapter;
    move-object v0, v12

    check-cast v0, Lcom/android/music/list/interfaces/MpCheckBoxControlInterface;

    move-object v13, v0

    invoke-interface {v13}, Lcom/android/music/list/interfaces/MpCheckBoxControlInterface;->getCheckedBoxCount()I

    move-result v4

    if-gtz v4, :cond_0

    .line 2143
    new-instance v14, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    invoke-direct {v14, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2146
    .local v14, builder:Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v17

    .line 2147
    .local v17, mLayoutInflater:Landroid/view/LayoutInflater;
    const v4, 0x7f03000a

    const/4 v5, 0x0

    move-object/from16 v0, v17

    move v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    .line 2148
    .local v18, myView:Landroid/view/View;
    const v4, 0x7f0c0032

    move-object/from16 v0, v18

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 2150
    .local v19, text:Landroid/widget/TextView;
    const v4, 0x7f0a00d4

    move-object/from16 v0, v19

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2151
    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a00a5

    new-instance v6, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener$1;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener$1;-><init>(Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2159
    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    .line 2160
    .local v13, alert:Landroid/app/AlertDialog;
    invoke-virtual {v13}, Landroid/app/AlertDialog;->show()V

    .line 2195
    .end local v12           #adapter:Landroid/widget/ListAdapter;
    .end local v13           #alert:Landroid/app/AlertDialog;
    .end local v14           #builder:Landroid/app/AlertDialog$Builder;
    .end local v17           #mLayoutInflater:Landroid/view/LayoutInflater;
    .end local v18           #myView:Landroid/view/View;
    .end local v19           #text:Landroid/widget/TextView;
    .end local p1
    :goto_0
    return-void

    .line 2164
    .restart local v12       #adapter:Landroid/widget/ListAdapter;
    .restart local p1
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    move-object v4, v0

    iget v4, v4, Lcom/android/music/list/view/AbstractMpListView;->mCheckListType:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    .line 2165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    move-object v4, v0

    move-object v0, v4

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    move-object v4, v0

    iget v4, v4, Lcom/android/music/list/view/AbstractMpListView;->mCheckListType:I

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 2166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    move-object v4, v0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "0"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "0"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, ""

    aput-object v7, v5, v6

    iput-object v5, v4, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    .line 2168
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    move-object v4, v0

    iget v4, v4, Lcom/android/music/list/view/AbstractMpListView;->mCheckListType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 2169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    move-object v4, v0

    move-object v0, v4

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    move-object/from16 p1, v0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "PlaylistID"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2170
    .local v15, id:Ljava/lang/String;
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 2171
    .local v6, listID:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    move-object v4, v0

    move-object v0, v4

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    move-object/from16 p1, v0

    check-cast p1, Landroid/app/Activity;

    const/4 v4, 0x3

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 2177
    .end local v15           #id:Ljava/lang/String;
    :goto_1
    new-instance v3, Lcom/android/music/list/data/MpListFileManageThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    move-object v4, v0

    iget v4, v4, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    move-object v5, v0

    iget v5, v5, Lcom/android/music/list/view/AbstractMpListView;->mCheckListType:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    check-cast v12, Lcom/android/music/list/interfaces/MpSetViewInterface;

    .end local v12           #adapter:Landroid/widget/ListAdapter;
    invoke-interface {v12}, Lcom/android/music/list/interfaces/MpSetViewInterface;->getChecked()[Z

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    move-object v9, v0

    iget-object v9, v9, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    move-object v10, v0

    invoke-static {v10}, Lcom/android/music/list/view/AbstractMpListView;->access$300(Lcom/android/music/list/view/AbstractMpListView;)Landroid/os/Handler;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    move-object v11, v0

    iget-object v11, v11, Lcom/android/music/list/view/AbstractMpListView;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-direct/range {v3 .. v11}, Lcom/android/music/list/data/MpListFileManageThread;-><init>(IIILandroid/database/Cursor;[ZLandroid/content/Context;Landroid/os/Handler;Lcom/android/music/list/view/AbstractMpListView;)V

    .line 2178
    .local v3, thread:Lcom/android/music/list/data/MpListFileManageThread;
    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/android/music/list/data/MpListFileManageThread;->setPriority(I)V

    .line 2180
    invoke-virtual {v3}, Lcom/android/music/list/data/MpListFileManageThread;->start()V

    goto/16 :goto_0

    .line 2173
    .end local v3           #thread:Lcom/android/music/list/data/MpListFileManageThread;
    .end local v6           #listID:I
    .restart local v12       #adapter:Landroid/widget/ListAdapter;
    :cond_2
    const/4 v4, 0x0

    sput-object v4, Lcom/android/music/list/view/AbstractMpListView;->mHasCheckListView:Lcom/android/music/list/view/AbstractMpListView;

    .line 2174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v6, v4

    .restart local v6       #listID:I
    :goto_2
    goto :goto_1

    .end local v6           #listID:I
    :cond_3
    const/4 v4, 0x0

    move v6, v4

    goto :goto_2

    .line 2182
    .restart local p1
    :cond_4
    new-instance v16, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/music/list/activity/MpListActivity;

    move-object/from16 v0, v16

    move-object v1, v4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2183
    .local v16, intent:Landroid/content/Intent;
    const-string v4, "ListType"

    const/4 v5, 0x2

    move-object/from16 v0, v16

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2184
    const-string v4, "TitleText"

    const v5, 0x7f0a0017

    move-object/from16 v0, v16

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2185
    const-string v4, "Check"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/music/list/view/AbstractMpListView;->mHasCheck:Z

    move-object/from16 v0, v16

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2186
    const-string v4, "CheckListType"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    move-object v5, v0

    iget v5, v5, Lcom/android/music/list/view/AbstractMpListView;->mCheckListType:I

    move-object/from16 v0, v16

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2187
    const-string v4, "CheckedList"

    check-cast v12, Lcom/android/music/list/interfaces/MpSetViewInterface;

    .end local v12           #adapter:Landroid/widget/ListAdapter;
    invoke-interface {v12}, Lcom/android/music/list/interfaces/MpSetViewInterface;->getChecked()[Z

    move-result-object v5

    move-object/from16 v0, v16

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;

    .line 2188
    const-string v4, "RootListType"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    move-object v5, v0

    iget v5, v5, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    move-object/from16 v0, v16

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    move-object v4, v0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "0"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "0"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, ""

    aput-object v7, v5, v6

    iput-object v5, v4, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    .line 2190
    :cond_5
    const-string v4, "Conditions"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    move-object/from16 v0, v16

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    instance-of v4, v4, Lcom/android/music/list/activity/MpListActivity;

    if-eqz v4, :cond_6

    .line 2192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    move-object v4, v0

    move-object v0, v4

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/app/Activity;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->finish()V

    .line 2193
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
