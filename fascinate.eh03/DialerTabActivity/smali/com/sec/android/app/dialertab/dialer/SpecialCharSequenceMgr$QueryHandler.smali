.class Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "SpecialCharSequenceMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .parameter "cr"

    .prologue
    .line 741
    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 742
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 9
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    const/4 v8, 0x0

    .line 750
    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;

    move-object v4, v0

    .line 753
    .local v4, sc:Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;
    iget-object v6, v4, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 756
    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->getTextField()Landroid/widget/EditText;

    move-result-object v5

    .line 761
    .local v5, text:Landroid/widget/EditText;
    if-eqz p3, :cond_0

    if-eqz v5, :cond_0

    iget v6, v4, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->contactNum:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 762
    const-string v6, "name"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 763
    .local v2, name:Ljava/lang/String;
    const-string v6, "number"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 766
    .local v3, number:Ljava/lang/String;
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6, v8, v8, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 769
    iget-object v6, v4, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 770
    .local v1, context:Landroid/content/Context;
    const v6, 0x7f090056

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v8

    invoke-virtual {v1, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 771
    invoke-static {v1, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 774
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #number:Ljava/lang/String;
    :cond_0
    return-void
.end method
