.class Lcom/android/server/status/StatusBarPolicy$2;
.super Ljava/lang/Object;
.source "StatusBarPolicy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/status/StatusBarPolicy;->showLowBatteryWarning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/StatusBarPolicy;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1238
    iput-object p1, p0, Lcom/android/server/status/StatusBarPolicy$2;->this$0:Lcom/android/server/status/StatusBarPolicy;

    iput-object p2, p0, Lcom/android/server/status/StatusBarPolicy$2;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$2;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/server/status/StatusBarPolicy;->access$2200(Lcom/android/server/status/StatusBarPolicy;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/status/StatusBarPolicy$2;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1240
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$2;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/server/status/StatusBarPolicy;->access$2300(Lcom/android/server/status/StatusBarPolicy;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1241
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$2;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/server/status/StatusBarPolicy;->access$2300(Lcom/android/server/status/StatusBarPolicy;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1243
    :cond_0
    return-void
.end method
