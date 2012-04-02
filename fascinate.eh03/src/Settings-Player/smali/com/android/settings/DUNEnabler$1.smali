.class Lcom/android/settings/DUNEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "DUNEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DUNEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DUNEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/DUNEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/settings/DUNEnabler$1;->this$0:Lcom/android/settings/DUNEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/DUNEnabler$1;->this$0:Lcom/android/settings/DUNEnabler;

    #getter for: Lcom/android/settings/DUNEnabler;->enabled:Z
    invoke-static {v1}, Lcom/android/settings/DUNEnabler;->access$000(Lcom/android/settings/DUNEnabler;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, action:Ljava/lang/String;
    const-string v1, "state"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    const-string v0, "com.android.phone.DisableDUN"

    .line 49
    iget-object v1, p0, Lcom/android/settings/DUNEnabler$1;->this$0:Lcom/android/settings/DUNEnabler;

    #getter for: Lcom/android/settings/DUNEnabler;->mButtonDataDun:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/DUNEnabler;->access$100(Lcom/android/settings/DUNEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 54
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DUNEnabler$1;->this$0:Lcom/android/settings/DUNEnabler;

    #calls: Lcom/android/settings/DUNEnabler;->sendBroadcast(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/settings/DUNEnabler;->access$200(Lcom/android/settings/DUNEnabler;Ljava/lang/String;)V

    .line 60
    .end local v0           #action:Ljava/lang/String;
    :cond_0
    return-void

    .line 51
    .restart local v0       #action:Ljava/lang/String;
    :cond_1
    const-string v0, "com.android.phone.EnableDUN"

    .line 52
    iget-object v1, p0, Lcom/android/settings/DUNEnabler$1;->this$0:Lcom/android/settings/DUNEnabler;

    #getter for: Lcom/android/settings/DUNEnabler;->mButtonDataDun:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/DUNEnabler;->access$100(Lcom/android/settings/DUNEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method
