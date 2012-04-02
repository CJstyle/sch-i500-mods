.class Lcom/android/settings/Settings$2;
.super Landroid/content/BroadcastReceiver;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/Settings;


# direct methods
.method constructor <init>(Lcom/android/settings/Settings;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/settings/Settings$2;->this$0:Lcom/android/settings/Settings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const-string v7, "]"

    .line 117
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, action:Ljava/lang/String;
    const-string v2, "plugged"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 119
    .local v1, pluggedType:I
    const-string v2, "UsbSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pluggedType ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/android/settings/Settings$2;->this$0:Lcom/android/settings/Settings;

    #getter for: Lcom/android/settings/Settings;->mPluggedType:I
    invoke-static {v2}, Lcom/android/settings/Settings;->access$000(Lcom/android/settings/Settings;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 127
    iget-object v2, p0, Lcom/android/settings/Settings$2;->this$0:Lcom/android/settings/Settings;

    #setter for: Lcom/android/settings/Settings;->mPluggedType:I
    invoke-static {v2, v1}, Lcom/android/settings/Settings;->access$002(Lcom/android/settings/Settings;I)I

    .line 128
    iget-object v2, p0, Lcom/android/settings/Settings$2;->this$0:Lcom/android/settings/Settings;

    const-string v3, "usb_settings"

    invoke-virtual {v2, v3}, Lcom/android/settings/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/Settings$2;->this$0:Lcom/android/settings/Settings;

    #getter for: Lcom/android/settings/Settings;->mPluggedType:I
    invoke-static {v3}, Lcom/android/settings/Settings;->access$000(Lcom/android/settings/Settings;)I

    move-result v3

    if-eq v3, v6, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 129
    iget-object v2, p0, Lcom/android/settings/Settings$2;->this$0:Lcom/android/settings/Settings;

    #getter for: Lcom/android/settings/Settings;->mPluggedType:I
    invoke-static {v2}, Lcom/android/settings/Settings;->access$000(Lcom/android/settings/Settings;)I

    move-result v2

    if-eq v2, v6, :cond_0

    iget-object v2, p0, Lcom/android/settings/Settings$2;->this$0:Lcom/android/settings/Settings;

    #calls: Lcom/android/settings/Settings;->dismissDialog()V
    invoke-static {v2}, Lcom/android/settings/Settings;->access$100(Lcom/android/settings/Settings;)V

    .line 132
    :cond_0
    return-void

    :cond_1
    move v3, v5

    .line 128
    goto :goto_0
.end method
