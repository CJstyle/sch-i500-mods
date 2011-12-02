.class Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$3;
.super Ljava/lang/Object;
.source "MpThumnailOneEditTitleScreenLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->setTitleDisplay(Lcom/android/music/list/data/LayoutData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;


# direct methods
.method constructor <init>(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$3;->this$0:Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const v10, 0x7f0a00a5

    const/4 v7, 0x1

    .line 429
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$3;->this$0:Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;

    invoke-static {v5}, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->access$000(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 432
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    iget-object v5, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$3;->this$0:Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;

    invoke-static {v5}, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->access$000(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 433
    .local v2, mLayoutInflater:Landroid/view/LayoutInflater;
    const v5, 0x7f03000a

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 434
    .local v3, myView:Landroid/view/View;
    const v5, 0x7f0c0032

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 436
    .local v4, text:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$3;->this$0:Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;

    invoke-static {v5}, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->access$500(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)Lcom/android/music/common/data/MusicDB;

    move-result-object v5

    if-nez v5, :cond_0

    .line 470
    :goto_0
    return-void

    .line 438
    :cond_0
    iget-object v5, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$3;->this$0:Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;

    iget-object v6, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$3;->this$0:Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;

    invoke-static {v6}, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->access$100(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->access$602(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;Ljava/lang/String;)Ljava/lang/String;

    .line 439
    iget-object v5, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$3;->this$0:Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;

    invoke-static {v5}, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->access$600(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 441
    const v5, 0x7f0a00c0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 442
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$3$1;

    invoke-direct {v6, p0}, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$3$1;-><init>(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$3;)V

    invoke-virtual {v5, v10, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 450
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 451
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 454
    .end local v0           #alert:Landroid/app/AlertDialog;
    :cond_1
    iget-object v5, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$3;->this$0:Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;

    invoke-static {v5}, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->access$500(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)Lcom/android/music/common/data/MusicDB;

    move-result-object v5

    iget-object v6, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$3;->this$0:Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;

    invoke-static {v6}, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->access$600(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/music/common/data/MusicDB;->isExistUserList(Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v7, :cond_2

    .line 456
    iget-object v5, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$3;->this$0:Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;

    invoke-static {v5}, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->access$000(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a00bf

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$3;->this$0:Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;

    invoke-static {v9}, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->access$600(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$3$2;

    invoke-direct {v6, p0}, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$3$2;-><init>(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$3;)V

    invoke-virtual {v5, v10, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 464
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 465
    .restart local v0       #alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 468
    .end local v0           #alert:Landroid/app/AlertDialog;
    :cond_2
    iget-object v5, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$3;->this$0:Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;

    invoke-virtual {v5}, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->createPlayList()V

    goto/16 :goto_0
.end method
