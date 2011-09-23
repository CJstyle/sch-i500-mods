.class Lcom/android/server/status/StatusBarService$37;
.super Ljava/lang/Object;
.source "StatusBarService.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/status/StatusBarService;->disPlayMobileDataOnAlert()V
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
    .line 4234
    iput-object p1, p0, Lcom/android/server/status/StatusBarService$37;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v2, 0x1

    const-string v3, "QUICKPANEL_MOBILEDATA_WARNING_CHECKED"

    .line 4235
    if-ne p2, v2, :cond_0

    .line 4237
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$37;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "QUICKPANEL_MOBILEDATA_WARNING_CHECKED"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4242
    :goto_0
    return-void

    .line 4240
    :cond_0
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$37;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "QUICKPANEL_MOBILEDATA_WARNING_CHECKED"

    const/4 v1, 0x0

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
