.class Lcom/android/mms/ui/ComposeMessageActivity$15$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageActivity$15;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$15;)V
    .locals 0
    .parameter

    .prologue
    .line 2724
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$15$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2726
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$15$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$15;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$15;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$15$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$15;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$15;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2727
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$15$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$15;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$15;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 2728
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$15$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$15;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$15;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_0

    .line 2729
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$15$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$15;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$15;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    .line 2732
    :cond_0
    return-void
.end method
