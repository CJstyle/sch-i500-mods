.class Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$3;
.super Ljava/lang/Object;
.source "AxT9optionsAutoSubsAdd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)V
    .locals 0
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->setResult(ILandroid/content/Intent;)V

    .line 281
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->finish()V

    .line 282
    return-void
.end method
