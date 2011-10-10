.class Lcom/android/mms/ui/SlideshowActivity$3;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideshowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$3;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$3;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$400(Lcom/android/mms/ui/SlideshowActivity;)V

    .line 403
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$3;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$500(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->play()V

    .line 404
    return-void
.end method
