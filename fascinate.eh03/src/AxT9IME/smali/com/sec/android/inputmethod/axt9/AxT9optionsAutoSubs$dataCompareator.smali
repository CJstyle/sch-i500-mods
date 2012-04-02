.class Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$dataCompareator;
.super Ljava/lang/Object;
.source "AxT9optionsAutoSubs.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "dataCompareator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$Data;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;


# direct methods
.method private constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;)V
    .locals 0
    .parameter

    .prologue
    .line 834
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$dataCompareator;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 834
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$dataCompareator;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$Data;Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$Data;)I
    .locals 2
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 838
    iget-object v0, p1, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$Data;->shortcut:Ljava/lang/String;

    iget-object v1, p2, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$Data;->shortcut:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 834
    check-cast p1, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$Data;

    .end local p1
    check-cast p2, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$Data;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$dataCompareator;->compare(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$Data;Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$Data;)I

    move-result v0

    return v0
.end method
