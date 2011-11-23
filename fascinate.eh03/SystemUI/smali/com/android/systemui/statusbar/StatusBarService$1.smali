.class Lcom/android/systemui/statusbar/StatusBarService$1;
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
    .line 730
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarService$1;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const-string v5, "StatusBarService"

    .line 737
    :try_start_0
    const-string v3, "StatusBarService"

    const-string v4, "==> typeButton"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 739
    .local v1, iTelephony:Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z

    move-result v2

    .line 740
    .local v2, temp:Z
    if-eqz v2, :cond_0

    .line 741
    const-string v3, "StatusBarService"

    const-string v4, "==> iTelephony.showCallScreen() is TRUE"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    .end local v1           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    .end local v2           #temp:Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService$1;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarService;->animateCollapse()V

    .line 752
    return-void

    .line 744
    .restart local v1       #iTelephony:Lcom/android/internal/telephony/ITelephony;
    .restart local v2       #temp:Z
    :cond_0
    :try_start_1
    const-string v3, "StatusBarService"

    const-string v4, "==> iTelephony.showCallScreen() is FASLE"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 747
    .end local v1           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    .end local v2           #temp:Z
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 748
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "StatusBarService"

    const-string v3, "RemoteException from getPhoneInterface()"

    invoke-static {v5, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
