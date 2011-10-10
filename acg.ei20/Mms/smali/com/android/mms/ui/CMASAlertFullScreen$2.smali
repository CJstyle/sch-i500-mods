.class Lcom/android/mms/ui/CMASAlertFullScreen$2;
.super Ljava/lang/Object;
.source "CMASAlertFullScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/CMASAlertFullScreen;->updateLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CMASAlertFullScreen;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/CMASAlertFullScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/mms/ui/CMASAlertFullScreen$2;->this$0:Lcom/android/mms/ui/CMASAlertFullScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/mms/ui/CMASAlertFullScreen$2;->this$0:Lcom/android/mms/ui/CMASAlertFullScreen;

    invoke-virtual {v0}, Lcom/android/mms/ui/CMASAlertFullScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 123
    iget-object v0, p0, Lcom/android/mms/ui/CMASAlertFullScreen$2;->this$0:Lcom/android/mms/ui/CMASAlertFullScreen;

    invoke-static {v0}, Lcom/android/mms/ui/CMASAlertFullScreen;->access$100(Lcom/android/mms/ui/CMASAlertFullScreen;)V

    .line 125
    return-void
.end method
