.class Lcom/sec/android/inputmethod/axt9/AxT9Option$1;
.super Ljava/lang/Object;
.source "AxT9Option.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


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
    .line 218
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9Option$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9Option;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter

    .prologue
    .line 220
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 221
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9Option$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9Option;

    const-class v2, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 223
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9Option$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9Option;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->startActivityForResult(Landroid/content/Intent;I)V

    .line 224
    const/4 v0, 0x1

    return v0
.end method
