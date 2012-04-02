.class Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage$1;
.super Ljava/lang/Object;
.source "AxT9OptionWritingLanguage.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->access$000(Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;)V

    .line 100
    const/4 v0, 0x1

    return v0
.end method
