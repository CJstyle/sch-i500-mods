.class Lcom/android/phone/TTYSettingsUtil$2;
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
    .line 109
    iput-object p1, p0, Lcom/android/phone/TTYSettingsUtil$2;->this$0:Lcom/android/phone/TTYSettingsUtil;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 113
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 124
    :goto_0
    return-void

    .line 115
    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/TTYSettingsUtil$2;->this$0:Lcom/android/phone/TTYSettingsUtil;

    #calls: Lcom/android/phone/TTYSettingsUtil;->handleQueryTtyResponse(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/phone/TTYSettingsUtil;->access$100(Lcom/android/phone/TTYSettingsUtil;Landroid/os/Message;)V

    .line 116
    iget-object v0, p0, Lcom/android/phone/TTYSettingsUtil$2;->this$0:Lcom/android/phone/TTYSettingsUtil;

    invoke-virtual {v0}, Lcom/android/phone/TTYSettingsUtil;->init()V

    goto :goto_0

    .line 119
    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/TTYSettingsUtil$2;->this$0:Lcom/android/phone/TTYSettingsUtil;

    invoke-virtual {v0}, Lcom/android/phone/TTYSettingsUtil;->init()V

    goto :goto_0

    .line 113
    nop

    :sswitch_data_0
    .sparse-switch
        0x2bc -> :sswitch_0
        0x320 -> :sswitch_1
    .end sparse-switch
.end method
