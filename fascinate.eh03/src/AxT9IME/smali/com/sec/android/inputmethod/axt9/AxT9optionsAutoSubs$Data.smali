.class Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$Data;
.super Ljava/lang/Object;
.source "AxT9optionsAutoSubs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Data"
.end annotation


# instance fields
.field shortcut:Ljava/lang/String;

.field substitution:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;


# direct methods
.method public constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 821
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$Data;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 822
    iput-object p2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$Data;->shortcut:Ljava/lang/String;

    .line 823
    iput-object p3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$Data;->substitution:Ljava/lang/String;

    .line 824
    return-void
.end method


# virtual methods
.method public getS1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$Data;->shortcut:Ljava/lang/String;

    return-object v0
.end method

.method public getS2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$Data;->substitution:Ljava/lang/String;

    return-object v0
.end method
