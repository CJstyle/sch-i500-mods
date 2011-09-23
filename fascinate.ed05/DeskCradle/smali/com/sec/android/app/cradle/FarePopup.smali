.class public Lcom/sec/android/app/cradle/FarePopup;
.super Ljava/lang/Object;
.source "FarePopup.java"


# static fields
.field public static final PREFS_FARE_MAP_TYPE:I = 0x2

.field public static final PREFS_FARE_SNS_TYPE:I = 0x3

.field public static final PREFS_FARE_WEATHER_TYPE:I = 0x1

.field public static final PREFS_KEY_SHOW_FARE_MAP_POPUP:Ljava/lang/String; = "do_not_show_fare_map_popup"

.field public static final PREFS_KEY_SHOW_FARE_SNS_POPUP:Ljava/lang/String; = "do_not_show_fare_sns_popup"

.field public static final PREFS_KEY_SHOW_FARE_WEATHER_POPUP:Ljava/lang/String; = "do_not_show_fare_weather_popup"

.field public static final PREFS_SHOW_FARE_POPUP:Ljava/lang/String; = "show_fare_popup"


# instance fields
.field listnerCancel:Landroid/content/DialogInterface$OnClickListener;

.field listnerOk:Landroid/content/DialogInterface$OnClickListener;

.field mActivity:Landroid/app/Activity;

.field mCheckBox:Landroid/widget/CheckBox;

.field mContext:Landroid/content/Context;

.field mFare_type:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;I)V
    .locals 0
    .parameter "activity"
    .parameter "ok"
    .parameter "cancel"
    .parameter "type"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/sec/android/app/cradle/FarePopup;->mContext:Landroid/content/Context;

    .line 65
    iput-object p1, p0, Lcom/sec/android/app/cradle/FarePopup;->mActivity:Landroid/app/Activity;

    .line 66
    iput-object p2, p0, Lcom/sec/android/app/cradle/FarePopup;->listnerOk:Landroid/content/DialogInterface$OnClickListener;

    .line 67
    iput-object p3, p0, Lcom/sec/android/app/cradle/FarePopup;->listnerCancel:Landroid/content/DialogInterface$OnClickListener;

    .line 68
    iput p4, p0, Lcom/sec/android/app/cradle/FarePopup;->mFare_type:I

    .line 69
    return-void
.end method

.method private saveFarePopupDisplay(IZ)V
    .locals 5
    .parameter "fareType"
    .parameter "show"

    .prologue
    .line 110
    iget-object v2, p0, Lcom/sec/android/app/cradle/FarePopup;->mContext:Landroid/content/Context;

    const-string v3, "show_fare_popup"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 111
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 112
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 113
    const-string v2, "do_not_show_fare_weather_popup"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 119
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 120
    return-void

    .line 114
    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 115
    const-string v2, "do_not_show_fare_map_popup"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 117
    :cond_1
    const-string v2, "do_not_show_fare_sns_popup"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method


# virtual methods
.method public createPopup()Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/android/app/cradle/FarePopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 106
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public getFareType()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/sec/android/app/cradle/FarePopup;->mFare_type:I

    return v0
.end method
