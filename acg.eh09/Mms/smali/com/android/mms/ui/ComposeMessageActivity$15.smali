.class Lcom/android/mms/ui/ComposeMessageActivity$15;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->initialize(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2722
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$15;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$15;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2724
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$15;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$15$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$15$1;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$15;)V

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2735
    return-void
.end method
