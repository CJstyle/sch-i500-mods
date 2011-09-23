.class Lcom/sec/android/inputmethod/axt9/AxT9IME$9;
.super Landroid/content/BroadcastReceiver;
.source "AxT9IME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9IME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V
    .locals 0
    .parameter

    .prologue
    .line 3850
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$9;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, -0x1

    const/4 v8, 0x0

    .line 3853
    const-string v5, "AddingWord"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3854
    .local v0, addingWord:Ljava/lang/CharSequence;
    const-string v5, "sendingActivity"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3855
    .local v3, sendingActivity:Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v5, "AxT9AddWord"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3856
    if-eqz v0, :cond_0

    .line 3857
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$9;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1600(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 3858
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_0

    .line 3859
    const v5, 0x1020029

    invoke-interface {v1, v5}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    .line 3860
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$9;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v5, v1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1700(Lcom/sec/android/inputmethod/axt9/AxT9IME;Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 3863
    .end local v1           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_0
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$9;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1800(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 3864
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$9;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1800(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    .line 3885
    :cond_1
    :goto_0
    return-void

    .line 3865
    :cond_2
    if-eqz v3, :cond_1

    const-string v5, "AxT9Option"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3866
    const-string v5, "languageShouldSet"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 3867
    .local v2, langShouldSet:I
    if-ne v2, v6, :cond_4

    .line 3868
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$9;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1600(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 3869
    .local v4, sp:Landroid/content/SharedPreferences;
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$9;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const-string v6, "select_language"

    const-string v7, "0"

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1902(Lcom/sec/android/inputmethod/axt9/AxT9IME;I)I

    .line 3870
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$9;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$9;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1900(Lcom/sec/android/inputmethod/axt9/AxT9IME;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$2000(Lcom/sec/android/inputmethod/axt9/AxT9IME;I)V

    .line 3871
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$9;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$9;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1900(Lcom/sec/android/inputmethod/axt9/AxT9IME;)I

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x1

    :goto_1
    invoke-static {v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$2100(Lcom/sec/android/inputmethod/axt9/AxT9IME;Z)V

    .line 3883
    .end local v4           #sp:Landroid/content/SharedPreferences;
    :goto_2
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$9;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1800(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->makeKeyboards()V

    goto :goto_0

    .restart local v4       #sp:Landroid/content/SharedPreferences;
    :cond_3
    move v6, v8

    .line 3871
    goto :goto_1

    .line 3880
    .end local v4           #sp:Landroid/content/SharedPreferences;
    :cond_4
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$9;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v5, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1902(Lcom/sec/android/inputmethod/axt9/AxT9IME;I)I

    .line 3881
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$9;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$9;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1900(Lcom/sec/android/inputmethod/axt9/AxT9IME;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$2000(Lcom/sec/android/inputmethod/axt9/AxT9IME;I)V

    goto :goto_2
.end method
