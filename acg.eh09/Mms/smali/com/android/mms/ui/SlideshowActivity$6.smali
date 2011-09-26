.class Lcom/android/mms/ui/SlideshowActivity$6;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideshowActivity;->handleEvent(Lorg/w3c/dom/events/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowActivity;

.field final synthetic val$event:Lorg/w3c/dom/events/Event;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowActivity;Lorg/w3c/dom/events/Event;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 847
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$6;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    iput-object p2, p0, Lcom/android/mms/ui/SlideshowActivity$6;->val$event:Lorg/w3c/dom/events/Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 849
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$6;->val$event:Lorg/w3c/dom/events/Event;

    invoke-interface {v1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v0

    .line 850
    .local v0, type:Ljava/lang/String;
    const-string v1, "SimlDocumentEnd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 852
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$6;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$500(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/dom/smil/SmilPlayer;->stop()V

    .line 853
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$6;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$1200(Lcom/android/mms/ui/SlideshowActivity;)V

    .line 854
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$6;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/mms/ui/SlideshowActivity;->access$1602(Lcom/android/mms/ui/SlideshowActivity;Z)Z

    .line 856
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$6;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$1700(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/SlideshowPresenter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 857
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$6;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$1700(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/SlideshowPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowPresenter;->resetLocation()V

    .line 859
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$6;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$1100(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/MmsPlayerController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 860
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$6;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$1100(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/MmsPlayerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsPlayerController;->hide()V

    .line 863
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$6;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$1800(Lcom/android/mms/ui/SlideshowActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$6;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$1900(Lcom/android/mms/ui/SlideshowActivity;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 865
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$6;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowActivity;->finish()V

    .line 867
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$6;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/mms/ui/SlideshowActivity;->access$1902(Lcom/android/mms/ui/SlideshowActivity;Z)Z

    .line 869
    :cond_3
    return-void
.end method
