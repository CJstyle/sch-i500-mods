.class Lcom/android/systemui/statusbar/StatusBarService$H;
.super Landroid/os/Handler;
.source "StatusBarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/StatusBarService;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/StatusBarService;)V
    .locals 0
    .parameter

    .prologue
    .line 1288
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarService$H;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/StatusBarService;Lcom/android/systemui/statusbar/StatusBarService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1288
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarService$H;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "m"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1290
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1311
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 1292
    .restart local p0
    :sswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$H;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/widget/Button;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-lez v1, :cond_1

    move v1, v4

    :goto_1
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-lez v2, :cond_2

    move v2, v4

    :goto_2
    invoke-static {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/StatusBarService;->access$300(Lcom/android/systemui/statusbar/StatusBarService;Landroid/widget/Button;ZZ)V

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2

    .line 1295
    .restart local p0
    :sswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$H;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarService;->doAnimation()V

    goto :goto_0

    .line 1298
    :sswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$H;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarService;->doRevealAnimation()V

    goto :goto_0

    .line 1302
    :sswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$H;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarService;->access$400(Lcom/android/systemui/statusbar/StatusBarService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1303
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$H;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/StatusBarService;->access$502(Lcom/android/systemui/statusbar/StatusBarService;I)I

    .line 1304
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$H;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    .line 1305
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$H;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarService;->performCollapse()V

    .line 1306
    const-string v0, "StatusBarService"

    const-string v1, ".BRIGHTNESS MODE."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1290
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_1
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_0
        0x7d0 -> :sswitch_3
    .end sparse-switch
.end method
