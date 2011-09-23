.class public final Lcom/android/internal/telephony/cdma/EriInfo;
.super Ljava/lang/Object;
.source "EriInfo.java"


# static fields
.field public static final BANNER_STYLE_FLASH:I = 0x1

.field public static final BANNER_STYLE_SOLID:I = 0x0

.field public static final CALL_GUARD_OFF:I = 0x0

.field public static final CALL_GUARD_ON:I = 0x1

.field public static final DATA_CALL_GUARD_OFF:I = 0x0

.field public static final DATA_CALL_GUARD_ON:I = 0x1

.field public static final RINGER_STATUS_OFF:I = 0x0

.field public static final RINGER_STATUS_ON:I = 0x1

.field public static final ROAMING_ICON_MODE_FLASH:I = 0x1

.field public static final ROAMING_ICON_MODE_NORMAL:I = 0x0

.field public static final ROAMING_INDICATOR_CUSTOM:I = 0x3

.field public static final ROAMING_INDICATOR_FLASH:I = 0x2

.field public static final ROAMING_INDICATOR_OFF:I = 0x1

.field public static final ROAMING_INDICATOR_ON:I = 0x0

.field public static final ROAMING_INDICATOR_OUT_OF_SERVICE:I = -0x1


# instance fields
.field public mAlertId:I

.field public mBannerStyle:I

.field public mCallGuardStatus:I

.field public mCallPromptId:I

.field public mDataCallGuardStatus:I

.field public mEriText:Ljava/lang/String;

.field public mIconIndex:I

.field public mIconMode:I

.field public mRinger:I

.field public mRoamingIndicator:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;II)V
    .locals 1
    .parameter "roamingIndicator"
    .parameter "iconIndex"
    .parameter "iconMode"
    .parameter "eriText"
    .parameter "callPromptId"
    .parameter "alertId"

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Lcom/android/internal/telephony/cdma/EriInfo;->mRoamingIndicator:I

    .line 63
    iput p2, p0, Lcom/android/internal/telephony/cdma/EriInfo;->mIconIndex:I

    .line 64
    iput p3, p0, Lcom/android/internal/telephony/cdma/EriInfo;->mIconMode:I

    .line 65
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/EriInfo;->mEriText:Ljava/lang/String;

    .line 66
    iput p5, p0, Lcom/android/internal/telephony/cdma/EriInfo;->mCallPromptId:I

    .line 67
    iput p6, p0, Lcom/android/internal/telephony/cdma/EriInfo;->mAlertId:I

    .line 70
    iput v0, p0, Lcom/android/internal/telephony/cdma/EriInfo;->mBannerStyle:I

    .line 71
    iput v0, p0, Lcom/android/internal/telephony/cdma/EriInfo;->mCallGuardStatus:I

    .line 72
    iput v0, p0, Lcom/android/internal/telephony/cdma/EriInfo;->mRinger:I

    .line 73
    iput v0, p0, Lcom/android/internal/telephony/cdma/EriInfo;->mDataCallGuardStatus:I

    .line 75
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;IIIIII)V
    .locals 0
    .parameter "roamingIndicator"
    .parameter "iconIndex"
    .parameter "iconMode"
    .parameter "eriText"
    .parameter "callPromptId"
    .parameter "alertId"
    .parameter "bannerStyle"
    .parameter "callGuardStatus"
    .parameter "ringer"
    .parameter "dataCallGuardStatus"

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p1, p0, Lcom/android/internal/telephony/cdma/EriInfo;->mRoamingIndicator:I

    .line 83
    iput p2, p0, Lcom/android/internal/telephony/cdma/EriInfo;->mIconIndex:I

    .line 84
    iput p3, p0, Lcom/android/internal/telephony/cdma/EriInfo;->mIconMode:I

    .line 85
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/EriInfo;->mEriText:Ljava/lang/String;

    .line 86
    iput p5, p0, Lcom/android/internal/telephony/cdma/EriInfo;->mCallPromptId:I

    .line 87
    iput p6, p0, Lcom/android/internal/telephony/cdma/EriInfo;->mAlertId:I

    .line 90
    iput p7, p0, Lcom/android/internal/telephony/cdma/EriInfo;->mBannerStyle:I

    .line 91
    iput p8, p0, Lcom/android/internal/telephony/cdma/EriInfo;->mCallGuardStatus:I

    .line 92
    iput p9, p0, Lcom/android/internal/telephony/cdma/EriInfo;->mRinger:I

    .line 93
    iput p10, p0, Lcom/android/internal/telephony/cdma/EriInfo;->mDataCallGuardStatus:I

    .line 94
    return-void
.end method
