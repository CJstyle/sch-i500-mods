.class Lcom/android/server/status/StatusBarService$6;
.super Ljava/lang/Object;
.source "StatusBarService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/status/StatusBarService;->setupQuickPanelCallView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/StatusBarService;


# direct methods
.method constructor <init>(Lcom/android/server/status/StatusBarService;)V
    .locals 0
    .parameter

    .prologue
    .line 1554
    iput-object p1, p0, Lcom/android/server/status/StatusBarService$6;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 1558
    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    move-object v4, v0

    .line 1561
    .local v4, muteButton:Landroid/widget/Button;
    const/4 v3, 0x0

    .line 1562
    .local v3, isMute:Z
    :try_start_0
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1564
    .local v2, iTelephony:Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getMute()Z

    move-result v3

    .line 1565
    if-nez v3, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-interface {v2, v5}, Lcom/android/internal/telephony/ITelephony;->setMute(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1571
    .end local v2           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :goto_1
    return-void

    .line 1565
    .restart local v2       #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 1568
    .end local v2           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 1569
    .local v1, ex:Landroid/os/RemoteException;
    const-string v5, "StatusBar"

    const-string v6, "RemoteException from getPhoneInterface()"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
