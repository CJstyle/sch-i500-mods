.class public Lcom/sec/android/app/cradle/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final CALENDAR_COLOR_FACEBOOK:I

.field public static final CALENDAR_TYPE_IMAGE:[I

.field public static final CALENDAR_TYPE_IMAGE_SMALL:[I

.field public static final CALENDAR_TYPE_TEXT:[I

.field public static final CONTACT_EVENTS_URI:Landroid/net/Uri;

.field public static final FACEBOOK_URI:Landroid/net/Uri;

.field public static final MAP_URI:Landroid/net/Uri;

.field static final SNS_EVENT_PROJECTION:[Ljava/lang/String;

.field public static final SNS_EVENT_URI:Landroid/net/Uri;

.field static final SNS_FRIEND_PROJECTION:[Ljava/lang/String;

.field static final SNS_RSVP_PROJECTION:[Ljava/lang/String;

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
