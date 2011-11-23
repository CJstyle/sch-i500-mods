.class Lcom/sec/android/app/dialertab/calllog/DetailViewActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "DetailViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity$1;->this$0:Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 126
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, action:Ljava/lang/String;
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity$1;->this$0:Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->setRequestedOrientation(I)V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 133
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity$1;->this$0:Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 135
    :cond_2
    sget-object v1, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity$1;->this$0:Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method
