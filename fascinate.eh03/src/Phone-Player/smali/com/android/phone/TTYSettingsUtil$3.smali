.class Lcom/android/phone/TTYSettingsUtil$3;
.super Landroid/os/Handler;
.source "TTYSettingsUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/TTYSettingsUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/TTYSettingsUtil;


# direct methods
.method constructor <init>(Lcom/android/phone/TTYSettingsUtil;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/phone/TTYSettingsUtil$3;->this$0:Lcom/android/phone/TTYSettingsUtil;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 185
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 192
    .end local p0
    :goto_0
    return-void

    .line 187
    .restart local p0
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/TTYSettingsUtil$3;->this$0:Lcom/android/phone/TTYSettingsUtil;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/TTYSettingsUtil;->handleQueryVPModeMessage(Landroid/os/AsyncResult;)I
    invoke-static {v0, p0}, Lcom/android/phone/TTYSettingsUtil;->access$200(Lcom/android/phone/TTYSettingsUtil;Landroid/os/AsyncResult;)I

    goto :goto_0

    .line 185
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
