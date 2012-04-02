.class Lcom/android/systemui/statusbar/StatusBarService$3;
.super Ljava/lang/Object;
.source "StatusBarService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/StatusBarService;->setupQuickPanelCallView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/StatusBarService;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/StatusBarService;)V
    .locals 0
    .parameter

    .prologue
    .line 770
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarService$3;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 775
    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    move-object v4, v0

    .line 778
    .local v4, muteButton:Landroid/widget/Button;
    const/4 v3, 0x0

    .line 779
    .local v3, isMute:Z
    :try_start_0
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 781
    .local v2, iTelephony:Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getMute()Z

    move-result v3

    .line 782
    if-nez v3, :cond_0

    move v5, v7

    :goto_0
    invoke-interface {v2, v5}, Lcom/android/internal/telephony/ITelephony;->setMute(Z)V

    .line 784
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarService$3;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    const/4 v6, 0x1

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/statusbar/StatusBarService;->updateMuteState(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    .end local v2           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :goto_2
    return-void

    .restart local v2       #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    move v5, v8

    .line 782
    goto :goto_0

    :cond_1
    move v7, v8

    .line 784
    goto :goto_1

    .line 786
    .end local v2           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 787
    .local v1, ex:Landroid/os/RemoteException;
    const-string v5, "StatusBarService"

    const-string v6, "RemoteException from getPhoneInterface()"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method
