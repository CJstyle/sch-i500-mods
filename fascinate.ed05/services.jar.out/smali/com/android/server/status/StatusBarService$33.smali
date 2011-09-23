.class Lcom/android/server/status/StatusBarService$33;
.super Ljava/lang/Object;
.source "StatusBarService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/StatusBarService;
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
    .line 3818
    iput-object p1, p0, Lcom/android/server/status/StatusBarService$33;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v9, " current value = "

    const-string v8, "mobile_data"

    const-string v5, "StatusBar"

    .line 3819
    iget-object v3, p0, Lcom/android/server/status/StatusBarService$33;->this$0:Lcom/android/server/status/StatusBarService;

    iget-boolean v3, v3, Lcom/android/server/status/StatusBarService;->mMobileDataStatus:Z

    if-ne v3, v6, :cond_7

    .line 3820
    iget-object v3, p0, Lcom/android/server/status/StatusBarService$33;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v3, v3, Lcom/android/server/status/StatusBarService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "QUICKPANEL_MOBILEDATA_WARNING_CHECKED"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3822
    .local v0, checked:I
    const-string v3, "StatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMobileDataBtnClickListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3824
    if-nez v0, :cond_0

    .line 3825
    const-string v3, "StatusBar"

    const-string v3, "disPlayMobileDataOnAlert"

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3826
    iget-object v3, p0, Lcom/android/server/status/StatusBarService$33;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v3}, Lcom/android/server/status/StatusBarService;->access$2700(Lcom/android/server/status/StatusBarService;)V

    .line 3871
    .end local v0           #checked:I
    :goto_0
    return-void

    .line 3829
    .restart local v0       #checked:I
    :cond_0
    iget-object v3, p0, Lcom/android/server/status/StatusBarService$33;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v3, v3, Lcom/android/server/status/StatusBarService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "mobile_data"

    invoke-static {v3, v8, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_2

    move v2, v6

    .line 3830
    .local v2, temp:Z
    :goto_1
    const-string v3, "StatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MobileDataBtnClickListener : onClick  , mMobileDataStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/status/StatusBarService$33;->this$0:Lcom/android/server/status/StatusBarService;

    iget-boolean v4, v4, Lcom/android/server/status/StatusBarService;->mMobileDataStatus:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " current value = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3831
    iget-object v3, p0, Lcom/android/server/status/StatusBarService$33;->this$0:Lcom/android/server/status/StatusBarService;

    iget-boolean v3, v3, Lcom/android/server/status/StatusBarService;->mMobileDataStatus:Z

    if-ne v3, v2, :cond_6

    .line 3832
    const/4 v1, 0x0

    .line 3833
    .local v1, mConnectivityManager:Landroid/net/ConnectivityManager;
    iget-object v3, p0, Lcom/android/server/status/StatusBarService$33;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v3, v3, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #mConnectivityManager:Landroid/net/ConnectivityManager;
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 3834
    .restart local v1       #mConnectivityManager:Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_4

    .line 3836
    const-string v3, "StatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MobileDataBtnClickListener : onClick  , set to  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/status/StatusBarService$33;->this$0:Lcom/android/server/status/StatusBarService;

    iget-boolean v4, v4, Lcom/android/server/status/StatusBarService;->mMobileDataStatus:Z

    if-eqz v4, :cond_3

    move v4, v7

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3837
    iget-object v3, p0, Lcom/android/server/status/StatusBarService$33;->this$0:Lcom/android/server/status/StatusBarService;

    iget-boolean v3, v3, Lcom/android/server/status/StatusBarService;->mMobileDataStatus:Z

    if-ne v3, v6, :cond_1

    .line 3838
    invoke-virtual {v1, v7}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 3842
    :cond_1
    :goto_3
    iget-object v3, p0, Lcom/android/server/status/StatusBarService$33;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v4, p0, Lcom/android/server/status/StatusBarService$33;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v4, v4, Lcom/android/server/status/StatusBarService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "mobile_data"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_5

    move v4, v6

    :goto_4
    iput-boolean v4, v3, Lcom/android/server/status/StatusBarService;->mMobileDataStatus:Z

    goto/16 :goto_0

    .end local v1           #mConnectivityManager:Landroid/net/ConnectivityManager;
    .end local v2           #temp:Z
    :cond_2
    move v2, v7

    .line 3829
    goto :goto_1

    .restart local v1       #mConnectivityManager:Landroid/net/ConnectivityManager;
    .restart local v2       #temp:Z
    :cond_3
    move v4, v6

    .line 3836
    goto :goto_2

    .line 3840
    :cond_4
    const-string v3, "StatusBar"

    const-string v3, "MobileDataBtnClickListener : mConnectivityManager = null"

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    move v4, v7

    .line 3842
    goto :goto_4

    .line 3844
    .end local v1           #mConnectivityManager:Landroid/net/ConnectivityManager;
    :cond_6
    const-string v3, "StatusBar"

    const-string v3, "MobileDataBtnClickListener : onClick  , do not set"

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3845
    iget-object v3, p0, Lcom/android/server/status/StatusBarService$33;->this$0:Lcom/android/server/status/StatusBarService;

    iput-boolean v2, v3, Lcom/android/server/status/StatusBarService;->mMobileDataStatus:Z

    goto/16 :goto_0

    .line 3852
    .end local v0           #checked:I
    .end local v2           #temp:Z
    :cond_7
    iget-object v3, p0, Lcom/android/server/status/StatusBarService$33;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v3, v3, Lcom/android/server/status/StatusBarService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "mobile_data"

    invoke-static {v3, v8, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_9

    move v2, v6

    .line 3853
    .restart local v2       #temp:Z
    :goto_5
    const-string v3, "StatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MobileDataBtnClickListener : onClick  , mMobileDataStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/status/StatusBarService$33;->this$0:Lcom/android/server/status/StatusBarService;

    iget-boolean v4, v4, Lcom/android/server/status/StatusBarService;->mMobileDataStatus:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " current value = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3854
    iget-object v3, p0, Lcom/android/server/status/StatusBarService$33;->this$0:Lcom/android/server/status/StatusBarService;

    iget-boolean v3, v3, Lcom/android/server/status/StatusBarService;->mMobileDataStatus:Z

    if-ne v3, v2, :cond_d

    .line 3855
    const/4 v1, 0x0

    .line 3856
    .restart local v1       #mConnectivityManager:Landroid/net/ConnectivityManager;
    iget-object v3, p0, Lcom/android/server/status/StatusBarService$33;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v3, v3, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #mConnectivityManager:Landroid/net/ConnectivityManager;
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 3857
    .restart local v1       #mConnectivityManager:Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_b

    .line 3858
    const-string v3, "StatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MobileDataBtnClickListener : onClick  , set to  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/status/StatusBarService$33;->this$0:Lcom/android/server/status/StatusBarService;

    iget-boolean v4, v4, Lcom/android/server/status/StatusBarService;->mMobileDataStatus:Z

    if-eqz v4, :cond_a

    move v4, v7

    :goto_6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3859
    iget-object v3, p0, Lcom/android/server/status/StatusBarService$33;->this$0:Lcom/android/server/status/StatusBarService;

    iget-boolean v3, v3, Lcom/android/server/status/StatusBarService;->mMobileDataStatus:Z

    if-nez v3, :cond_8

    .line 3860
    invoke-virtual {v1, v6}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 3864
    :cond_8
    :goto_7
    iget-object v3, p0, Lcom/android/server/status/StatusBarService$33;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v4, p0, Lcom/android/server/status/StatusBarService$33;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v4, v4, Lcom/android/server/status/StatusBarService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "mobile_data"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_c

    move v4, v6

    :goto_8
    iput-boolean v4, v3, Lcom/android/server/status/StatusBarService;->mMobileDataStatus:Z

    goto/16 :goto_0

    .end local v1           #mConnectivityManager:Landroid/net/ConnectivityManager;
    .end local v2           #temp:Z
    :cond_9
    move v2, v7

    .line 3852
    goto :goto_5

    .restart local v1       #mConnectivityManager:Landroid/net/ConnectivityManager;
    .restart local v2       #temp:Z
    :cond_a
    move v4, v6

    .line 3858
    goto :goto_6

    .line 3862
    :cond_b
    const-string v3, "StatusBar"

    const-string v3, "MobileDataBtnClickListener : mConnectivityManager = null"

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_c
    move v4, v7

    .line 3864
    goto :goto_8

    .line 3866
    .end local v1           #mConnectivityManager:Landroid/net/ConnectivityManager;
    :cond_d
    const-string v3, "StatusBar"

    const-string v3, "MobileDataBtnClickListener : onClick  , do not set"

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3867
    iget-object v3, p0, Lcom/android/server/status/StatusBarService$33;->this$0:Lcom/android/server/status/StatusBarService;

    iput-boolean v2, v3, Lcom/android/server/status/StatusBarService;->mMobileDataStatus:Z

    goto/16 :goto_0
.end method
