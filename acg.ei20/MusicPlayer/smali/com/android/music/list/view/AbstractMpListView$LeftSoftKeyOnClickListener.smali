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
    .line 2333
    iput-object p1, p0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2335
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v10, 0x0

    const-string v7, "0"

    .line 2338
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onClick (Left Softkey)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v1}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 2340
    move-object v0, v6

    check-cast v0, Lcom/android/music/list/interfaces/MpCheckBoxControlInterface;

    move-object v1, v0

    invoke-interface {v1}, Lcom/android/music/list/interfaces/MpCheckBoxControlInterface;->getCheckedBoxCount()I

    move-result v1

    if-gtz v1, :cond_0

    .line 2342
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v1, v1, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2345
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v1, v1, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 2346
    const v3, 0x7f03000a

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2347
    const v1, 0x7f0c0032

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2349
    const v4, 0x7f0a00db

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2350
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f0a00a8

    new-instance v4, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener$1;

    invoke-direct {v4, p0}, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener$1;-><init>(Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2358
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 2359
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2394
    :goto_0
    return-void

    .line 2363
    :cond_0
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    iget v1, v1, Lcom/android/music/list/view/AbstractMpListView;->mCheckListType:I

    if-eq v1, v5, :cond_4

    .line 2364
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v1, v1, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    iget v2, v2, Lcom/android/music/list/view/AbstractMpListView;->mCheckListType:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->showDialog(I)V

    .line 2365
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v1, v1, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v7, v2, v10

    const-string v3, "0"

    aput-object v7, v2, v5

    const-string v3, ""

    aput-object v3, v2, v8

    iput-object v2, v1, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    .line 2367
    :cond_1
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    iget v1, v1, Lcom/android/music/list/view/AbstractMpListView;->mCheckListType:I

    if-ne v1, v4, :cond_2

    .line 2368
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v1, v1, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "PlaylistID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2369
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2370
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v1, v1, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->setResult(I)V

    move v4, v2

    .line 2376
    :goto_1
    new-instance v1, Lcom/android/music/list/data/MpListFileManageThread;

    iget-object v2, p0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    iget v2, v2, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    iget-object v3, p0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    iget v3, v3, Lcom/android/music/list/view/AbstractMpListView;->mCheckListType:I

    iget-object v5, p0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v5, v5, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    check-cast v6, Lcom/android/music/list/interfaces/MpSetViewInterface;

    invoke-interface {v6}, Lcom/android/music/list/interfaces/MpSetViewInterface;->getChecked()[Z

    move-result-object v6

    iget-object v7, p0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v7, v7, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    invoke-static {v8}, Lcom/android/music/list/view/AbstractMpListView;->access$300(Lcom/android/music/list/view/AbstractMpListView;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v9, v9, Lcom/android/music/list/view/AbstractMpListView;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-direct/range {v1 .. v10}, Lcom/android/music/list/data/MpListFileManageThread;-><init>(IIILandroid/database/Cursor;[ZLandroid/content/Context;Landroid/os/Handler;Lcom/android/music/list/view/AbstractMpListView;Z)V

    .line 2377
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/music/list/data/MpListFileManageThread;->setPriority(I)V

    .line 2379
    invoke-virtual {v1}, Lcom/android/music/list/data/MpListFileManageThread;->start()V

    goto :goto_0

    .line 2372
    :cond_2
    const/4 v1, 0x0

    sput-object v1, Lcom/android/music/list/view/AbstractMpListView;->mHasCheckListView:Lcom/android/music/list/view/AbstractMpListView;

    .line 2373
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v1, v1, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    aget-object v1, v1, v10

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v1, v1, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_2
    move v4, v1

    goto :goto_1

    :cond_3
    move v1, v10

    goto :goto_2

    .line 2381
    :cond_4
    new-instance v2, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v1, v1, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/music/list/activity/MpListActivity;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2382
    const-string v1, "ListType"

    invoke-virtual {v2, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2383
    const-string v1, "TitleText"

    const v3, 0x7f0a0017

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2384
    const-string v1, "Check"

    iget-object v3, p0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    iget-boolean v3, v3, Lcom/android/music/list/view/AbstractMpListView;->mHasCheck:Z

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2385
    const-string v1, "CheckListType"

    iget-object v3, p0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    iget v3, v3, Lcom/android/music/list/view/AbstractMpListView;->mCheckListType:I

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2386
    const-string v1, "CheckedList"

    check-cast v6, Lcom/android/music/list/interfaces/MpSetViewInterface;

    invoke-interface {v6}, Lcom/android/music/list/interfaces/MpSetViewInterface;->getChecked()[Z

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;

    .line 2387
    const-string v1, "RootListType"

    iget-object v3, p0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    iget v3, v3, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2388
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v1, v1, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    new-array v3, v4, [Ljava/lang/String;

    const-string v4, "0"

    aput-object v7, v3, v10

    const-string v4, "0"

    aput-object v7, v3, v5

    const-string v4, ""

    aput-object v4, v3, v8

    iput-object v3, v1, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    .line 2389
    :cond_5
    const-string v1, "Conditions"

    iget-object v3, p0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v3, v3, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2390
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v1, v1, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/android/music/list/activity/MpListActivity;

    if-eqz v1, :cond_6

    .line 2391
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v1, v1, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 2392
    :cond_6
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v1, v1, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
