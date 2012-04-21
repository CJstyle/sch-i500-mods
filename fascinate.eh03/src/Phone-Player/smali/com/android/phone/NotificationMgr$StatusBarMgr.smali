.class Lcom/android/phone/NotificationMgr$StatusBarMgr;
.super Ljava/lang/Object;
.source "NotificationMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NotificationMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StatusBarMgr"
.end annotation


# instance fields
.field private mIsExpandedViewEnabled:Z

.field private mIsNotificationEnabled:Z

.field final synthetic this$0:Lcom/android/phone/NotificationMgr;


# direct methods
.method private constructor <init>(Lcom/android/phone/NotificationMgr;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 179
    iput-object p1, p0, Lcom/android/phone/NotificationMgr$StatusBarMgr;->this$0:Lcom/android/phone/NotificationMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr$StatusBarMgr;->mIsNotificationEnabled:Z

    .line 177
    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr$StatusBarMgr;->mIsExpandedViewEnabled:Z

    .line 180
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/NotificationMgr;Lcom/android/phone/NotificationMgr$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/android/phone/NotificationMgr$StatusBarMgr;-><init>(Lcom/android/phone/NotificationMgr;)V

    return-void
.end method


# virtual methods
.method enableExpandedView(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr$StatusBarMgr;->mIsExpandedViewEnabled:Z

    if-eq v0, p1, :cond_0

    .line 205
    iput-boolean p1, p0, Lcom/android/phone/NotificationMgr$StatusBarMgr;->mIsExpandedViewEnabled:Z

    .line 206
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr$StatusBarMgr;->updateStatusBar()V

    .line 208
    :cond_0
    return-void
.end method

.method enableNotificationAlerts(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr$StatusBarMgr;->mIsNotificationEnabled:Z

    if-eq v0, p1, :cond_0

    .line 191
    iput-boolean p1, p0, Lcom/android/phone/NotificationMgr$StatusBarMgr;->mIsNotificationEnabled:Z

    .line 192
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr$StatusBarMgr;->updateStatusBar()V

    .line 194
    :cond_0
    return-void
.end method

.method updateStatusBar()V
    .locals 2

    .prologue
    .line 215
    const/4 v0, 0x0

    .line 217
    .local v0, state:I
    iget-boolean v1, p0, Lcom/android/phone/NotificationMgr$StatusBarMgr;->mIsExpandedViewEnabled:Z

    if-nez v1, :cond_0

    .line 218
    or-int/lit8 v0, v0, 0x1

    .line 221
    :cond_0
    iget-boolean v1, p0, Lcom/android/phone/NotificationMgr$StatusBarMgr;->mIsNotificationEnabled:Z

    if-nez v1, :cond_1

    .line 222
    or-int/lit8 v0, v0, 0x4

    .line 227
    :cond_1
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$StatusBarMgr;->this$0:Lcom/android/phone/NotificationMgr;

    #getter for: Lcom/android/phone/NotificationMgr;->mStatusBar:Landroid/app/StatusBarManager;
    invoke-static {v1}, Lcom/android/phone/NotificationMgr;->access$100(Lcom/android/phone/NotificationMgr;)Landroid/app/StatusBarManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    .line 228
    return-void
.end method
