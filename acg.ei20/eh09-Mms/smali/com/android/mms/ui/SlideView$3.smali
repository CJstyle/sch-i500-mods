.class Lcom/android/mms/ui/SlideView$3;
.super Ljava/lang/Object;
.source "SlideView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideView;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/mms/ui/SlideView$3;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const v3, 0x7f090156

    const/4 v4, 0x0

    const-string v2, "Mms/SlideView"

    .line 160
    const/4 v1, -0x4

    if-ne p2, v1, :cond_2

    .line 161
    const-string v1, "Mms/SlideView"

    const-string v1, ">>MEDIA_ERROR_NOTSUPPORT<<"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v1, p0, Lcom/android/mms/ui/SlideView$3;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-static {v1}, Lcom/android/mms/ui/SlideView;->access$600(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SlideView$3;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-static {v2}, Lcom/android/mms/ui/SlideView;->access$700(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 184
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideView$3;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-static {v1}, Lcom/android/mms/ui/SlideView;->access$200(Lcom/android/mms/ui/SlideView;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 185
    iget-object v1, p0, Lcom/android/mms/ui/SlideView$3;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-static {v1}, Lcom/android/mms/ui/SlideView;->access$200(Lcom/android/mms/ui/SlideView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 186
    iget-object v1, p0, Lcom/android/mms/ui/SlideView$3;->this$0:Lcom/android/mms/ui/SlideView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/mms/ui/SlideView;->access$202(Lcom/android/mms/ui/SlideView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 188
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 166
    :cond_2
    const/16 v1, -0xa

    if-ne p2, v1, :cond_3

    .line 167
    const-string v1, "Mms/SlideView"

    const-string v1, ">>MEDIA_ERROR_CURRUPT<<"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v1, p0, Lcom/android/mms/ui/SlideView$3;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-static {v1}, Lcom/android/mms/ui/SlideView;->access$800(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SlideView$3;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-static {v2}, Lcom/android/mms/ui/SlideView;->access$900(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 172
    :cond_3
    const-string v1, "Mms/SlideView"

    const-string v1, ">>Unknown error<<"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v1, p0, Lcom/android/mms/ui/SlideView$3;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-static {v1}, Lcom/android/mms/ui/SlideView;->access$1000(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SlideView$3;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-static {v2}, Lcom/android/mms/ui/SlideView;->access$1100(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090193

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 177
    invoke-static {}, Lcom/android/mms/dom/smil/SmilPlayer;->getPlayer()Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v0

    .line 178
    .local v0, player:Lcom/android/mms/dom/smil/SmilPlayer;
    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->STOPPED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    invoke-virtual {v0, v1}, Lcom/android/mms/dom/smil/SmilPlayer;->setPlayerState(Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;)V

    .line 179
    iget-object v1, p0, Lcom/android/mms/ui/SlideView$3;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-static {v1}, Lcom/android/mms/ui/SlideView;->access$200(Lcom/android/mms/ui/SlideView;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/android/mms/ui/SlideView$3;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideView;->stopAudio()V

    goto :goto_0
.end method
