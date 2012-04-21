.class Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$6;
.super Landroid/os/Handler;
.source "RejectCallWithMsgSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;


# direct methods
.method constructor <init>(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$6;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 318
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 323
    :goto_0
    return-void

    .line 320
    :pswitch_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "DONE"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 318
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
