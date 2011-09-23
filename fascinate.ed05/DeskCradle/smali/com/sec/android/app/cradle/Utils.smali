.class public Lcom/sec/android/app/cradle/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final ACCOUNT_TYPE_AOL:Ljava/lang/String; = "com.seven.Z7.aol"

.field public static final ACCOUNT_TYPE_EMAIL:Ljava/lang/String; = "com.seven.Z7"

.field public static final ACCOUNT_TYPE_FACEBOOK:Ljava/lang/String; = "com.sec.android.app.snsaccountfacebook.account_type"

.field public static final ACCOUNT_TYPE_GMAIL:Ljava/lang/String; = "com.seven.Z7.gmail"

.field public static final ACCOUNT_TYPE_LOCAL:Ljava/lang/String; = "local"

.field public static final ACCOUNT_TYPE_MSN:Ljava/lang/String; = "com.seven.Z7.msn"

.field public static final ACCOUNT_TYPE_WORK:Ljava/lang/String; = "com.seven.Z7.work"

.field public static final ACCOUNT_TYPE_YAHOO:Ljava/lang/String; = "com.seven.Z7.yahoo"

.field public static final ATTENDEE_CONTACT_ID:Ljava/lang/String; = "attendee_contact_id"

.field public static final ATTENDEE_PHONENUMBER:Ljava/lang/String; = "attendeePhoneNumber"

.field public static final CALENDAR_COLOR_DEFAULT:I = -0xff0100

#the value of this static final field might be set in the static constructor
.field public static final CALENDAR_COLOR_FACEBOOK:I = 0x0

.field public static final CALENDAR_COLOR_UNKNOWN:I = -0x222223

.field public static final CALENDAR_TYPE_FACEBOOK:I = 0x4

.field public static final CALENDAR_TYPE_GOOGLE:I = 0x2

.field public static final CALENDAR_TYPE_IMAGE:[I = null

.field public static final CALENDAR_TYPE_IMAGE_SMALL:[I = null

.field public static final CALENDAR_TYPE_INVALID:I = 0x0

.field public static final CALENDAR_TYPE_LOCAL:I = 0x1

.field public static final CALENDAR_TYPE_TEXT:[I = null

.field public static final CALENDAR_TYPE_YAHOO:I = 0x3

.field public static final CONTACT_DATA_ID:Ljava/lang/String; = "contact_data_id"

.field public static final CONTACT_EVENTS_URI:Landroid/net/Uri; = null

.field public static final CONTACT_RAW_ID:Ljava/lang/String; = "contact_id"

.field public static final DIALOG_DATE:I = 0x101

.field public static final EVENT_LATITUDE:Ljava/lang/String; = "latitude"

.field public static final EVENT_LONGITUDE:Ljava/lang/String; = "longitude"

.field public static final EVENT_TYPE:Ljava/lang/String; = "contactEventType"

.field public static final EVENT_TYPE_ANNIVERSARY:I = 0x1

.field public static final EVENT_TYPE_APPOINTMENT:I = 0x0

.field public static final EVENT_TYPE_BIRTHDAY:I = 0x3

.field public static final EVENT_TYPE_OTHER:I = 0x2

.field public static final FACEBOOK_OWNER:Ljava/lang/String; = "facebook_owner"

.field public static final FACEBOOK_PHOTO:Ljava/lang/String; = "photo"

.field public static final FACEBOOK_PHOTO_URL:Ljava/lang/String; = "facebook_photo_url"

.field public static final FACEBOOK_POST_TIME:Ljava/lang/String; = "facebook_post_time"

.field public static final FACEBOOK_SCHEDULE_ID:Ljava/lang/String; = "facebook_schedule_id"

.field public static final FACEBOOK_SERVICE_PROVIDER:Ljava/lang/String; = "facebook_service_provider"

.field public static final FACEBOOK_URI:Landroid/net/Uri; = null

.field public static final MAPS_MAP:Ljava/lang/String; = "map"

.field public static final MAP_URI:Landroid/net/Uri; = null

.field public static final QUICK_ADD_DIALOG:I = 0x102

.field public static final REMINDERS_CUSTOM:Ljava/lang/String; = "custom"

.field public static final REMINDERS_RINGTONE:Ljava/lang/String; = "ringtone"

.field public static final SEVEN_CALENDAR_AUTHORITY:Ljava/lang/String; = "com.seven.provider.calendar"

.field static final SNS_AUTHORITY:Ljava/lang/String; = "com.sec.android.app.provider.sns"

.field static final SNS_EVENT_PROJECTION:[Ljava/lang/String; = null

.field public static final SNS_EVENT_URI:Landroid/net/Uri; = null

.field static final SNS_FRIEND_PROJECTION:[Ljava/lang/String; = null

.field static final SNS_RSVP_PROJECTION:[Ljava/lang/String; = null

.field static final SNS_RSVP_TYPE_ATTENDING:Ljava/lang/String; = "attending"

.field static final SNS_RSVP_TYPE_DECLINED:Ljava/lang/String; = "declined"

.field static final SNS_RSVP_TYPE_NOT_REPILIED:Ljava/lang/String; = "not_replied"

.field static final SNS_RSVP_TYPE_UNSURE:Ljava/lang/String; = "unsure"

.field public static final SNS_RSVP_URI:Landroid/net/Uri;

.field public static final englishNthDay:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 118
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, "1st"

    aput-object v1, v0, v4

    const-string v1, "2nd"

    aput-object v1, v0, v5

    const-string v1, "3rd"

    aput-object v1, v0, v6

    const-string v1, "4th"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "5th"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "6th"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "7th"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "8th"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "9th"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "10th"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "11th"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "12th"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "13th"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "14th"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "15th"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "16th"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "17th"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "18th"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "19th"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "20th"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "21st"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "22nd"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "23rd"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "24th"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "25th"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "26th"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "27th"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "28th"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "29th"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "30th"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "31st"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/cradle/Utils;->englishNthDay:[Ljava/lang/String;

    .line 225
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/cradle/Utils;->CALENDAR_TYPE_TEXT:[I

    .line 230
    new-array v0, v4, [I

    aput v3, v0, v3

    sput-object v0, Lcom/sec/android/app/cradle/Utils;->CALENDAR_TYPE_IMAGE:[I

    .line 234
    new-array v0, v4, [I

    aput v3, v0, v3

    sput-object v0, Lcom/sec/android/app/cradle/Utils;->CALENDAR_TYPE_IMAGE_SMALL:[I

    .line 278
    const/16 v0, 0x3c

    const/16 v1, 0x5b

    const/16 v2, 0x9a

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/sec/android/app/cradle/Utils;->CALENDAR_COLOR_FACEBOOK:I

    .line 283
    const-string v0, "content://calendar/contact_events"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/cradle/Utils;->CONTACT_EVENTS_URI:Landroid/net/Uri;

    .line 284
    const-string v0, "content://calendar/maps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/cradle/Utils;->MAP_URI:Landroid/net/Uri;

    .line 285
    const-string v0, "content://calendar/facebooks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/cradle/Utils;->FACEBOOK_URI:Landroid/net/Uri;

    .line 325
    const-string v0, "content://com.sec.android.app.provider.sns/event"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/cradle/Utils;->SNS_EVENT_URI:Landroid/net/Uri;

    .line 327
    const-string v0, "content://com.sec.android.app.provider.sns/event_rsvp_map/eventid"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/cradle/Utils;->SNS_RSVP_URI:Landroid/net/Uri;

    .line 329
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "event_id"

    aput-object v1, v0, v4

    const-string v1, "service_provider"

    aput-object v1, v0, v5

    const-string v1, "title"

    aput-object v1, v0, v6

    const-string v1, "content"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "owner"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "start_time"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "end_time"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "post_time"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "place"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "photo_url"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/cradle/Utils;->SNS_EVENT_PROJECTION:[Ljava/lang/String;

    .line 343
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "first_name"

    aput-object v1, v0, v3

    const-string v1, "last_name"

    aput-object v1, v0, v4

    const-string v1, "event_type"

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/cradle/Utils;->SNS_RSVP_PROJECTION:[Ljava/lang/String;

    .line 355
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "friend.friend_id"

    aput-object v1, v0, v3

    const-string v1, "first_name"

    aput-object v1, v0, v4

    const-string v1, "last_name"

    aput-object v1, v0, v5

    const-string v1, "full_name"

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/app/cradle/Utils;->SNS_FRIEND_PROJECTION:[Ljava/lang/String;

    return-void

    .line 225
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final applyAlphaAnimation(Landroid/widget/ViewFlipper;)V
    .locals 8
    .parameter "v"

    .prologue
    const-wide/16 v6, 0x1f4

    const-wide/16 v4, 0x0

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 90
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 92
    .local v0, in:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 93
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 95
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 97
    .local v1, out:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 98
    invoke-virtual {v1, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 100
    invoke-virtual {p0, v0}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 101
    invoke-virtual {p0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 102
    return-void
.end method

.method public static extractValue(Landroid/pim/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "component"
    .parameter "propertyName"

    .prologue
    .line 495
    invoke-virtual {p0, p1}, Landroid/pim/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Landroid/pim/ICalendar$Property;

    move-result-object v0

    .line 497
    .local v0, property:Landroid/pim/ICalendar$Property;
    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {v0}, Landroid/pim/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 500
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static formatMonthYear(Landroid/text/format/Time;)Ljava/lang/String;
    .locals 2
    .parameter "time"

    .prologue
    .line 112
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 113
    .local v0, res:Landroid/content/res/Resources;
    const-string v1, "%-B %Y"

    invoke-virtual {p0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNth(I)Ljava/lang/String;
    .locals 2
    .parameter "nth"

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "the "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/cradle/Utils;->englishNthDay:[Ljava/lang/String;

    aget-object v1, v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCalendarType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "accountType"
    .parameter "ownerAccount"

    .prologue
    .line 239
    const/4 v0, 0x0

    .line 241
    .local v0, calendarType:I
    if-eqz p0, :cond_1

    const-string v1, "local"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 242
    const/4 v0, 0x1

    .line 268
    :cond_0
    :goto_0
    return v0

    .line 243
    :cond_1
    if-eqz p0, :cond_2

    const-string v1, "com.sec.android.app.snsaccountfacebook.account_type"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 244
    const/4 v0, 0x4

    goto :goto_0

    .line 245
    :cond_2
    if-eqz p0, :cond_3

    const-string v1, "com.seven.Z7.yahoo"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 246
    const/4 v0, 0x3

    goto :goto_0

    .line 247
    :cond_3
    if-eqz p1, :cond_4

    const-string v1, "gmail.com"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "google.com"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "googlemail.com"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    if-eqz p0, :cond_0

    const-string v1, "com.seven.Z7.gmail"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    :cond_5
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static getTodayMillis()J
    .locals 8

    .prologue
    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 195
    .local v2, now:J
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 196
    .local v4, time:Landroid/text/format/Time;
    iget-wide v6, v4, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v6, v7}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v5

    .line 197
    .local v5, today:I
    invoke-virtual {v4, v5}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 198
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 199
    .local v0, millis:J
    return-wide v0
.end method

.method public static insertVEvent(Landroid/content/ContentResolver;Landroid/pim/ICalendar$Component;JILandroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .parameter "cr"
    .parameter "event"
    .parameter "calendarId"
    .parameter "status"
    .parameter "values"

    .prologue
    .line 391
    invoke-virtual {p5}, Landroid/content/ContentValues;->clear()V

    .line 394
    const-string v0, "SUMMARY"

    invoke-static {p1, v0}, Lcom/sec/android/app/cradle/Utils;->extractValue(Landroid/pim/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, title:Ljava/lang/String;
    const-string v1, "title"

    invoke-virtual {p5, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v0, "eventStatus"

    .end local v0           #title:Ljava/lang/String;
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .end local p4
    invoke-virtual {p5, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 401
    const-string p4, "DESCRIPTION"

    invoke-static {p1, p4}, Lcom/sec/android/app/cradle/Utils;->extractValue(Landroid/pim/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 402
    .local p4, description:Ljava/lang/String;
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    const-string v0, "description"

    invoke-virtual {p5, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :cond_0
    const-string p4, "LOCATION"

    .end local p4           #description:Ljava/lang/String;
    invoke-static {p1, p4}, Lcom/sec/android/app/cradle/Utils;->extractValue(Landroid/pim/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 408
    .local p4, where:Ljava/lang/String;
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 409
    const-string v0, "eventLocation"

    invoke-virtual {p5, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    :cond_1
    const-string p4, "calendar_id"

    .end local p4           #where:Ljava/lang/String;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .end local p2
    invoke-virtual {p5, p4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 415
    const/4 p2, 0x0

    .line 420
    .local p2, timesSet:Z
    new-instance v2, Landroid/text/format/Time;

    const-string p2, "UTC"

    .end local p2           #timesSet:Z
    invoke-direct {v2, p2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 421
    .local v2, time:Landroid/text/format/Time;
    const/4 p3, 0x0

    .line 422
    .local p3, dtstart:Ljava/lang/String;
    const/4 p2, 0x0

    .line 423
    .local p2, dtend:Ljava/lang/String;
    const/4 v1, 0x0

    .line 424
    .local v1, duration:Ljava/lang/String;
    const-string p4, "DTSTART"

    invoke-virtual {p1, p4}, Landroid/pim/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Landroid/pim/ICalendar$Property;

    move-result-object v0

    .line 426
    .local v0, dtstartProp:Landroid/pim/ICalendar$Property;
    if-eqz v0, :cond_a

    .line 427
    invoke-virtual {v0}, Landroid/pim/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object p4

    .line 428
    .end local p3           #dtstart:Ljava/lang/String;
    .local p4, dtstart:Ljava/lang/String;
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 429
    const-string p3, "TZID"

    invoke-virtual {v0, p3}, Landroid/pim/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Landroid/pim/ICalendar$Parameter;

    move-result-object p3

    .line 431
    .local p3, tzidParam:Landroid/pim/ICalendar$Parameter;
    if-eqz p3, :cond_2

    iget-object v0, p3, Landroid/pim/ICalendar$Parameter;->value:Ljava/lang/String;

    .end local v0           #dtstartProp:Landroid/pim/ICalendar$Property;
    if-eqz v0, :cond_2

    .line 432
    iget-object p3, p3, Landroid/pim/ICalendar$Parameter;->value:Ljava/lang/String;

    .end local p3           #tzidParam:Landroid/pim/ICalendar$Parameter;
    invoke-virtual {v2, p3}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 435
    :cond_2
    :try_start_0
    invoke-virtual {v2, p4}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    iget-boolean p3, v2, Landroid/text/format/Time;->allDay:Z

    if-eqz p3, :cond_3

    .line 443
    const-string p3, "allDay"

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p5, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 445
    :cond_3
    const-string p3, "dtstart"

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p5, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 446
    const-string p3, "eventTimezone"

    iget-object v0, v2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-virtual {p5, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    :cond_4
    const-string p3, "DTEND"

    invoke-virtual {p1, p3}, Landroid/pim/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Landroid/pim/ICalendar$Property;

    move-result-object p3

    .line 450
    .local p3, dtendProp:Landroid/pim/ICalendar$Property;
    if-eqz p3, :cond_6

    .line 451
    invoke-virtual {p3}, Landroid/pim/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object p2

    .line 452
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    .end local p3           #dtendProp:Landroid/pim/ICalendar$Property;
    if-nez p3, :cond_9

    .line 456
    :try_start_1
    invoke-virtual {v2, p2}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 463
    const-string p3, "dtend"

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .end local v2           #time:Landroid/text/format/Time;
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p5, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object p3, p4

    .end local p4           #dtstart:Ljava/lang/String;
    .local p3, dtstart:Ljava/lang/String;
    move-object p4, v1

    .line 478
    .end local v1           #duration:Ljava/lang/String;
    .local p4, duration:Ljava/lang/String;
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 481
    :cond_5
    const-string p0, "insertVEvent"

    .end local p0
    const-string p1, "No DTSTART or DTEND/DURATION defined."

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const/4 p0, 0x0

    move-object p1, p3

    .end local p3           #dtstart:Ljava/lang/String;
    .local p1, dtstart:Ljava/lang/String;
    move-object p3, p0

    move-object p0, p2

    .end local p2           #dtend:Ljava/lang/String;
    .local p0, dtend:Ljava/lang/String;
    move-object p2, p4

    .line 489
    .end local p4           #duration:Ljava/lang/String;
    .end local p5
    .local p2, duration:Ljava/lang/String;
    :goto_1
    return-object p3

    .line 436
    .restart local v1       #duration:Ljava/lang/String;
    .restart local v2       #time:Landroid/text/format/Time;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, event:Landroid/pim/ICalendar$Component;
    .local p2, dtend:Ljava/lang/String;
    .local p4, dtstart:Ljava/lang/String;
    .restart local p5
    :catch_0
    move-exception p0

    .line 438
    .local p0, e:Ljava/lang/Exception;
    const-string p1, "insertVEvent"

    .end local p1           #event:Landroid/pim/ICalendar$Component;
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Cannot parse dtstart "

    .end local p5
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 440
    const/4 p0, 0x0

    move-object p1, p4

    .end local p4           #dtstart:Ljava/lang/String;
    .local p1, dtstart:Ljava/lang/String;
    move-object p3, p0

    move-object p0, p2

    .end local p2           #dtend:Ljava/lang/String;
    .local p0, dtend:Ljava/lang/String;
    move-object p2, v1

    .end local v1           #duration:Ljava/lang/String;
    .local p2, duration:Ljava/lang/String;
    goto :goto_1

    .line 457
    .restart local v1       #duration:Ljava/lang/String;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, event:Landroid/pim/ICalendar$Component;
    .local p2, dtend:Ljava/lang/String;
    .restart local p4       #dtstart:Ljava/lang/String;
    .restart local p5
    :catch_1
    move-exception p0

    .line 459
    .local p0, e:Ljava/lang/Exception;
    const-string p1, "insertVEvent"

    .end local p1           #event:Landroid/pim/ICalendar$Component;
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Cannot parse dtend "

    .end local p5
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 461
    const/4 p0, 0x0

    move-object p1, p4

    .end local p4           #dtstart:Ljava/lang/String;
    .local p1, dtstart:Ljava/lang/String;
    move-object p3, p0

    move-object p0, p2

    .end local p2           #dtend:Ljava/lang/String;
    .local p0, dtend:Ljava/lang/String;
    move-object p2, v1

    .end local v1           #duration:Ljava/lang/String;
    .local p2, duration:Ljava/lang/String;
    goto :goto_1

    .line 467
    .restart local v1       #duration:Ljava/lang/String;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, event:Landroid/pim/ICalendar$Component;
    .local p2, dtend:Ljava/lang/String;
    .local p3, dtendProp:Landroid/pim/ICalendar$Property;
    .restart local p4       #dtstart:Ljava/lang/String;
    .restart local p5
    :cond_6
    const-string p3, "DURATION"

    .end local p3           #dtendProp:Landroid/pim/ICalendar$Property;
    invoke-virtual {p1, p3}, Landroid/pim/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Landroid/pim/ICalendar$Property;

    move-result-object p3

    .line 469
    .local p3, durationProp:Landroid/pim/ICalendar$Property;
    if-eqz p3, :cond_9

    .line 470
    invoke-virtual {p3}, Landroid/pim/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object p3

    .line 471
    .end local v1           #duration:Ljava/lang/String;
    .local p3, duration:Ljava/lang/String;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 473
    const-string v0, "duration"

    invoke-virtual {p5, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    move-object v5, p3

    .end local p3           #duration:Ljava/lang/String;
    .local v5, duration:Ljava/lang/String;
    move-object p3, p4

    .end local p4           #dtstart:Ljava/lang/String;
    .local p3, dtstart:Ljava/lang/String;
    move-object p4, v5

    .end local v5           #duration:Ljava/lang/String;
    .local p4, duration:Ljava/lang/String;
    goto :goto_0

    .line 487
    .end local v2           #time:Landroid/text/format/Time;
    :cond_8
    invoke-static {p1, p5}, Landroid/pim/RecurrenceSet;->populateContentValues(Landroid/pim/ICalendar$Component;Landroid/content/ContentValues;)Z

    .line 489
    sget-object p1, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    .end local p1           #event:Landroid/pim/ICalendar$Component;
    invoke-virtual {p0, p1, p5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    .end local p0           #cr:Landroid/content/ContentResolver;
    move-object p1, p3

    .end local p3           #dtstart:Ljava/lang/String;
    .local p1, dtstart:Ljava/lang/String;
    move-object p3, p0

    move-object p0, p2

    .end local p2           #dtend:Ljava/lang/String;
    .local p0, dtend:Ljava/lang/String;
    move-object p2, p4

    .end local p4           #duration:Ljava/lang/String;
    .local p2, duration:Ljava/lang/String;
    goto :goto_1

    .restart local v1       #duration:Ljava/lang/String;
    .restart local v2       #time:Landroid/text/format/Time;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, event:Landroid/pim/ICalendar$Component;
    .local p2, dtend:Ljava/lang/String;
    .local p4, dtstart:Ljava/lang/String;
    :cond_9
    move-object p3, p4

    .end local p4           #dtstart:Ljava/lang/String;
    .restart local p3       #dtstart:Ljava/lang/String;
    move-object p4, v1

    .end local v1           #duration:Ljava/lang/String;
    .local p4, duration:Ljava/lang/String;
    goto/16 :goto_0

    .end local p4           #duration:Ljava/lang/String;
    .restart local v0       #dtstartProp:Landroid/pim/ICalendar$Property;
    .restart local v1       #duration:Ljava/lang/String;
    :cond_a
    move-object p4, v1

    .end local v1           #duration:Ljava/lang/String;
    .restart local p4       #duration:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public static isNetWorkConnected(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 366
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 369
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 370
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setAllDayEvents(Ljava/util/ArrayList;II)I
    .locals 13
    .parameter
    .parameter "firstday"
    .parameter "lastday"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/cradle/Event;",
            ">;II)I"
        }
    .end annotation

    .prologue
    .local p0, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/cradle/Event;>;"
    const/4 v12, 0x1

    .line 140
    const/4 v2, 0x0

    .line 141
    .local v2, dirty:Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v5, longEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/cradle/Event;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v7, sameTimeEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/cradle/Event;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v1, annEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/cradle/Event;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v0, alldayEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/cradle/Event;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v6, norEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/cradle/Event;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/cradle/Event;

    .line 149
    .local v3, event:Lcom/sec/android/app/cradle/Event;
    const/4 v8, -0x1

    if-eq p1, v8, :cond_1

    .line 150
    iget v8, v3, Lcom/sec/android/app/cradle/Event;->startDay:I

    if-gt v8, p2, :cond_0

    iget v8, v3, Lcom/sec/android/app/cradle/Event;->endDay:I

    if-lt v8, p1, :cond_0

    .line 155
    :cond_1
    iget v8, v3, Lcom/sec/android/app/cradle/Event;->eventType:I

    if-eqz v8, :cond_2

    .line 156
    iput-boolean v12, v3, Lcom/sec/android/app/cradle/Event;->allDay:Z

    .line 157
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    if-nez v2, :cond_0

    .line 159
    const/4 v2, 0x1

    goto :goto_0

    .line 160
    :cond_2
    iget v8, v3, Lcom/sec/android/app/cradle/Event;->startDay:I

    iget v9, v3, Lcom/sec/android/app/cradle/Event;->endDay:I

    if-ge v8, v9, :cond_3

    iget-boolean v8, v3, Lcom/sec/android/app/cradle/Event;->allDay:Z

    if-nez v8, :cond_3

    .line 162
    iput-boolean v12, v3, Lcom/sec/android/app/cradle/Event;->allDay:Z

    .line 163
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    if-nez v2, :cond_0

    .line 165
    const/4 v2, 0x1

    goto :goto_0

    .line 166
    :cond_3
    iget-wide v8, v3, Lcom/sec/android/app/cradle/Event;->startMillis:J

    iget-wide v10, v3, Lcom/sec/android/app/cradle/Event;->endMillis:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_4

    iget-boolean v8, v3, Lcom/sec/android/app/cradle/Event;->allDay:Z

    if-nez v8, :cond_4

    .line 167
    iput-boolean v12, v3, Lcom/sec/android/app/cradle/Event;->allDay:Z

    .line 168
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    if-nez v2, :cond_0

    .line 170
    const/4 v2, 0x1

    goto :goto_0

    .line 171
    :cond_4
    iget-boolean v8, v3, Lcom/sec/android/app/cradle/Event;->allDay:Z

    if-eqz v8, :cond_5

    .line 172
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    :cond_5
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 178
    .end local v3           #event:Lcom/sec/android/app/cradle/Event;
    :cond_6
    if-eqz v2, :cond_7

    .line 179
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 181
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 182
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 183
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 184
    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 185
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 187
    invoke-static {p0}, Lcom/sec/android/app/cradle/Event;->computePositions(Ljava/util/ArrayList;)V

    .line 190
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/2addr v8, v9

    return v8
.end method

.method static setDefaultView(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "viewId"

    .prologue
    .line 68
    return-void
.end method

.method static setTimeToStartOfDay(Landroid/text/format/Time;)V
    .locals 1
    .parameter "time"

    .prologue
    const/4 v0, 0x0

    .line 134
    iput v0, p0, Landroid/text/format/Time;->second:I

    .line 135
    iput v0, p0, Landroid/text/format/Time;->minute:I

    .line 136
    iput v0, p0, Landroid/text/format/Time;->hour:I

    .line 137
    return-void
.end method

.method public static showToast(Landroid/app/Activity;I)V
    .locals 0
    .parameter "activity"
    .parameter "resId"

    .prologue
    .line 381
    return-void
.end method

.method public static startActivity(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2
    .parameter "context"
    .parameter "className"
    .parameter "time"

    .prologue
    .line 57
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const-string v1, "beginTime"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 61
    const/high16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 63
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 64
    return-void
.end method

.method public static final timeFromIntent(Landroid/content/Intent;)Landroid/text/format/Time;
    .locals 3
    .parameter "intent"

    .prologue
    .line 71
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 72
    .local v0, time:Landroid/text/format/Time;
    invoke-static {p0}, Lcom/sec/android/app/cradle/Utils;->timeFromIntentInMillis(Landroid/content/Intent;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 73
    return-object v0
.end method

.method public static final timeFromIntentInMillis(Landroid/content/Intent;)J
    .locals 5
    .parameter "intent"

    .prologue
    const-wide/16 v3, -0x1

    .line 82
    const-string v2, "beginTime"

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 83
    .local v0, millis:J
    cmp-long v2, v0, v3

    if-nez v2, :cond_0

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 86
    :cond_0
    return-wide v0
.end method
