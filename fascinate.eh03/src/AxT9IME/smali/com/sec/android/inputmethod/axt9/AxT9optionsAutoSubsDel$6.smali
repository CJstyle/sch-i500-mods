.class Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$6;
.super Ljava/lang/Object;
.source "AxT9optionsAutoSubsDel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)V
    .locals 0
    .parameter

    .prologue
    .line 416
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$6;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v8, 0x1

    .line 419
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$6;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    invoke-static {v6}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 420
    .local v3, count:I
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$6;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    invoke-static {v6}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->access$900(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)Ljava/util/Hashtable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Hashtable;->size()I

    move-result v2

    .line 424
    .local v2, allCount:I
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$6;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    invoke-static {v6}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->access$1000(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 425
    .local v1, Dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 426
    const v6, 0x7f0a0041

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 427
    const v6, 0x7f0a0040

    new-instance v7, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$6$1;

    invoke-direct {v7, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$6$1;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$6;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 433
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$6;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0025

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 434
    if-ne v3, v2, :cond_0

    .line 435
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$6;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00f2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 442
    :goto_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 443
    .local v0, ConfirmDlg:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 444
    .local v4, win:Landroid/view/Window;
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 445
    .local v5, wlp:Landroid/view/WindowManager$LayoutParams;
    const/16 v6, 0x3eb

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 446
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 454
    return-void

    .line 436
    .end local v0           #ConfirmDlg:Landroid/app/AlertDialog;
    .end local v4           #win:Landroid/view/Window;
    .end local v5           #wlp:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    if-ne v3, v8, :cond_1

    .line 437
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$6;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00f0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 439
    :cond_1
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$6;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00f1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
