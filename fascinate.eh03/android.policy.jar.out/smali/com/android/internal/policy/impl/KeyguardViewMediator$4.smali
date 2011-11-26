.class Lcom/android/internal/policy/impl/KeyguardViewMediator$4;
.super Landroid/os/Handler;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .locals 0
    .parameter

    .prologue
    .line 1317
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1320
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1369
    :goto_0
    return-void

    .line 1322
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$2100(Lcom/android/internal/policy/impl/KeyguardViewMediator;I)V

    goto :goto_0

    .line 1325
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$2200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_0

    .line 1328
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$2300(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_0

    .line 1331
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$2400(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_0

    .line 1334
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$2500(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_0

    .line 1337
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$2600(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_0

    .line 1340
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$2700(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_0

    .line 1343
    :pswitch_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$2800(Lcom/android/internal/policy/impl/KeyguardViewMediator;I)V

    goto :goto_0

    .line 1346
    :pswitch_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_0

    move v1, v2

    :goto_1
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$2900(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)V

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    .line 1349
    :pswitch_9
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$3000(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_0

    .line 1352
    :pswitch_a
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->keyguardDone(Z)V

    goto :goto_0

    .line 1355
    :pswitch_b
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_1

    move v1, v2

    :goto_2
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$3100(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)V

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_2

    .line 1366
    :pswitch_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$400(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_0

    .line 1320
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
