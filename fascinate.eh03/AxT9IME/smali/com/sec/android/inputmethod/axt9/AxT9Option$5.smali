.class Lcom/sec/android/inputmethod/axt9/AxT9Option$5;
.super Ljava/lang/Object;
.source "AxT9Option.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9Option;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9Option;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9Option;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9Option$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9Option;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "selecteditem"

    .prologue
    const/4 v4, 0x0

    .line 267
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 268
    .local v1, inputLanguage:I
    sget-boolean v3, Lcom/sec/android/inputmethod/axt9/AxT9IME;->IS_CORE_INIT:Z

    if-nez v3, :cond_1

    .line 269
    const/4 v0, 0x0

    .line 271
    .local v0, errorcode:S
    if-nez v1, :cond_0

    .line 272
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9Option$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9Option;

    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->access$000(Lcom/sec/android/inputmethod/axt9/AxT9Option;)S

    move-result v3

    invoke-static {v3, v4}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWLdbSetLanguage(SS)S

    move-result v0

    .line 283
    .end local v0           #errorcode:S
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 274
    .restart local v0       #errorcode:S
    :cond_0
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9Option$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9Option;

    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->access$100(Lcom/sec/android/inputmethod/axt9/AxT9Option;)[S

    move-result-object v3

    aget-short v3, v3, v1

    invoke-static {v3, v4}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWLdbSetLanguage(SS)S

    goto :goto_0

    .line 277
    .end local v0           #errorcode:S
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 278
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "com.samsung.sec.android.inputmethod.axt9.AxT9IME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    const-string v3, "sendingActivity"

    const-string v4, "AxT9Option"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9Option$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9Option;

    invoke-virtual {v3, v2}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
