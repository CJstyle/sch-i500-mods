.class Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup$1;
.super Ljava/lang/Object;
.source "AxT9UmlautPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->finish()V

    .line 39
    return-void
.end method
