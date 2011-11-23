.class Lcom/android/music/list/activity/MpMainTabActivity$6;
.super Ljava/lang/Object;
.source "MpMainTabActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/list/activity/MpMainTabActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/list/activity/MpMainTabActivity;


# direct methods
.method constructor <init>(Lcom/android/music/list/activity/MpMainTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1014
    iput-object p1, p0, Lcom/android/music/list/activity/MpMainTabActivity$6;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 1017
    sget-object v1, Lcom/android/music/list/activity/MpMainTabActivity;->mediaMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1018
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/music/list/activity/MpMainTabActivity;->isShownmediaMessageBox:Z

    .line 1020
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.pv.verizon.mod.ACTION_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1021
    .local v0, newintent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity$6;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-virtual {v1, v0}, Lcom/android/music/list/activity/MpMainTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 1022
    return-void
.end method
