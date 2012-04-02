.class public Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;
.super Ljava/lang/Object;
.source "AxT9Language.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9Language;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LanguageInfo"
.end annotation


# instance fields
.field private mLangCode:Ljava/lang/String;

.field private mLangDBId:S

.field private mLangName:Ljava/lang/String;

.field private mLangStringId:I


# direct methods
.method constructor <init>(SILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "langDBId"
    .parameter "langStringId"
    .parameter "langName"
    .parameter "langCode"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-short p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->mLangDBId:S

    .line 44
    iput p2, p0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->mLangStringId:I

    .line 45
    iput-object p3, p0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->mLangName:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->mLangCode:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public getLangCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->mLangCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLangDBId()S
    .locals 1

    .prologue
    .line 49
    iget-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->mLangDBId:S

    return v0
.end method

.method public getLangName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->mLangName:Ljava/lang/String;

    return-object v0
.end method

.method public getLangStringId()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->mLangStringId:I

    return v0
.end method
