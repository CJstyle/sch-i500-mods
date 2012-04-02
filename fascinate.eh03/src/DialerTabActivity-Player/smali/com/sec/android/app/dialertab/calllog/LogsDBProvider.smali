.class public Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;
.super Ljava/lang/Object;
.source "LogsDBProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/LogsDBProvider$VideoCall;,
        Lcom/sec/android/app/dialertab/calllog/LogsDBProvider$CallDelete;,
        Lcom/sec/android/app/dialertab/calllog/LogsDBProvider$AllCallDelete;,
        Lcom/sec/android/app/dialertab/calllog/LogsDBProvider$Frequent;,
        Lcom/sec/android/app/dialertab/calllog/LogsDBProvider$Sms;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "call"

.field public static final CACHED_NAME:Ljava/lang/String; = "name"

.field public static final CACHED_NAME_REVERSED:Ljava/lang/String; = "name_reversed"

.field public static final CACHED_NUMBER_LABEL:Ljava/lang/String; = "numberlabel"

.field public static final CACHED_NUMBER_TYPE:Ljava/lang/String; = "numbertype"

.field public static final CALLLOG_ID:Ljava/lang/String; = "cid"

.field public static final CONTACT_ID:Ljava/lang/String; = "contactid"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final COUNT:Ljava/lang/String; = "count"

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final FREQUENT:Ljava/lang/String; = "frequent"

.field public static final INCOMING_TYPE:I = 0x1

.field public static final LOG_TYPE:Ljava/lang/String; = "logtype"

.field public static final MESSAGE_ID:Ljava/lang/String; = "messageid"

.field public static final MISSED_TYPE:I = 0x3

.field public static final NEW:Ljava/lang/String; = "new"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final OUTGOING_TYPE:I = 0x2

.field public static final RAW_CONTACT_ID:Ljava/lang/String; = "raw_contact_id"

.field public static final READ_MSG:I = 0x1

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final UNREAD_MSG:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "content://logs/call"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method
