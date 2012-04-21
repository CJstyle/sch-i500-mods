.class Lcom/android/phone/DataRoamingGuard$3;
.super Ljava/lang/Object;
.source "DataRoamingGuard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/DataRoamingGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DataRoamingGuard;


# direct methods
.method constructor <init>(Lcom/android/phone/DataRoamingGuard;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/phone/DataRoamingGuard$3;->this$0:Lcom/android/phone/DataRoamingGuard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    const-string v6, "data_roam_guard_first_time"

    .line 91
    iget-object v3, p0, Lcom/android/phone/DataRoamingGuard$3;->this$0:Lcom/android/phone/DataRoamingGuard;

    iget-object v3, v3, Lcom/android/phone/DataRoamingGuard;->cbNeverAsk:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    const/4 v1, 0x2

    .line 93
    .local v1, dataRoamingGuardSetting:I
    iget-object v3, p0, Lcom/android/phone/DataRoamingGuard$3;->this$0:Lcom/android/phone/DataRoamingGuard;

    #getter for: Lcom/android/phone/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/DataRoamingGuard;->access$000(Lcom/android/phone/DataRoamingGuard;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_roam_guard_settings"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 96
    .end local v1           #dataRoamingGuardSetting:I
    :cond_0
    iget-object v3, p0, Lcom/android/phone/DataRoamingGuard$3;->this$0:Lcom/android/phone/DataRoamingGuard;

    #getter for: Lcom/android/phone/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/DataRoamingGuard;->access$000(Lcom/android/phone/DataRoamingGuard;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 99
    iget-object v3, p0, Lcom/android/phone/DataRoamingGuard$3;->this$0:Lcom/android/phone/DataRoamingGuard;

    #getter for: Lcom/android/phone/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/DataRoamingGuard;->access$000(Lcom/android/phone/DataRoamingGuard;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_roam_guard_first_time"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 101
    .local v0, bFirstTime:I
    if-eqz v0, :cond_1

    .line 102
    iget-object v3, p0, Lcom/android/phone/DataRoamingGuard$3;->this$0:Lcom/android/phone/DataRoamingGuard;

    #getter for: Lcom/android/phone/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/DataRoamingGuard;->access$000(Lcom/android/phone/DataRoamingGuard;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_roam_guard_first_time"

    const/4 v4, 0x0

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 104
    iget-object v3, p0, Lcom/android/phone/DataRoamingGuard$3;->this$0:Lcom/android/phone/DataRoamingGuard;

    const v4, 0x7f0d0040

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 107
    .local v2, toast:Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 110
    .end local v2           #toast:Landroid/widget/Toast;
    :cond_1
    iget-object v3, p0, Lcom/android/phone/DataRoamingGuard$3;->this$0:Lcom/android/phone/DataRoamingGuard;

    invoke-virtual {v3}, Lcom/android/phone/DataRoamingGuard;->finish()V

    .line 111
    return-void
.end method
