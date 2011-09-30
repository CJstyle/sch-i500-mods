.class Lcom/android/music/discplus/view/TouchJogDial$1;
.super Landroid/os/Handler;
.source "TouchJogDial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/discplus/view/TouchJogDial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/discplus/view/TouchJogDial;


# direct methods
.method constructor <init>(Lcom/android/music/discplus/view/TouchJogDial;)V
    .locals 0
    .parameter

    .prologue
    .line 714
    iput-object p1, p0, Lcom/android/music/discplus/view/TouchJogDial$1;->this$0:Lcom/android/music/discplus/view/TouchJogDial;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 717
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 722
    :goto_0
    return-void

    .line 719
    :pswitch_0
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial$1;->this$0:Lcom/android/music/discplus/view/TouchJogDial;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/TouchJogDial;->invalidate()V

    goto :goto_0

    .line 717
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
