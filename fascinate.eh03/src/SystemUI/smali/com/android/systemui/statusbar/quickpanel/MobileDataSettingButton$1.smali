.class Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton$1;
.super Ljava/lang/Object;
.source "MobileDataSettingButton.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;->onDisplayMobileDataOffAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton$1;->this$0:Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;

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

    const-string v3, "quickpanel_mobiledata_checked"

    .line 138
    if-ne p2, v2, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton$1;->this$0:Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;

    invoke-static {v0}, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;->access$100(Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quickpanel_mobiledata_checked"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 145
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton$1;->this$0:Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;

    invoke-static {v0}, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;->access$200(Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quickpanel_mobiledata_checked"

    const/4 v1, 0x0

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
