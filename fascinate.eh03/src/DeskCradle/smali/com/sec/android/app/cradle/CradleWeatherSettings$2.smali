.class Lcom/sec/android/app/cradle/CradleWeatherSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "CradleWeatherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/cradle/CradleWeatherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;


# direct methods
.method constructor <init>(Lcom/sec/android/app/cradle/CradleWeatherSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$2;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 133
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, action:Ljava/lang/String;
    sget-object v1, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$2;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->finish()V

    .line 140
    :cond_0
    return-void
.end method
