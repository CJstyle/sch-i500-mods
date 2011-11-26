.class public final Landroid/provider/Calendar$Instances;
.super Ljava/lang/Object;
.source "Calendar.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Calendar$EventsColumns;
.implements Landroid/provider/Calendar$CalendarsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Instances"
.end annotation


# static fields
.field public static final BEGIN:Ljava/lang/String; = "begin"

.field public static final CONTENT_BY_DAY_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "begin ASC"

.field public static final END:Ljava/lang/String; = "end"

.field public static final END_DAY:Ljava/lang/String; = "endDay"

.field public static final END_MINUTE:Ljava/lang/String; = "endMinute"

.field public static final EVENT_ID:Ljava/lang/String; = "event_id"

.field public static final SORT_CALENDAR_VIEW:Ljava/lang/String; = "begin ASC, end DESC, title ASC"

.field public static final START_DAY:Ljava/lang/String; = "startDay"

.field public static final START_MINUTE:Ljava/lang/String; = "startMinute"

.field private static final WHERE_CALENDARS_SELECTED:Ljava/lang/String; = "selected=1"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 897
    const-string v0, "content://com.android.calendar/instances/when"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Calendar$Instances;->CONTENT_URI:Landroid/net/Uri;

    .line 899
    const-string v0, "content://com.android.calendar/instances/whenbyday"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Calendar$Instances;->CONTENT_BY_DAY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 849
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final query(Landroid/content/ContentResolver;[Ljava/lang/String;JJ)Landroid/database/Cursor;
    .locals 9
    .parameter "cr"
    .parameter "projection"
    .parameter "begin"
    .parameter "end"

    .prologue
    const/4 v8, 0x0

    .line 855
    sget-object v0, Landroid/provider/Calendar$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 856
    .local v6, builder:Landroid/net/Uri$Builder;
    invoke-static {v6, p2, p3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 857
    invoke-static {v6, p4, p5}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 860
    :try_start_0
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v3, "selected=1"

    const/4 v4, 0x0

    const-string v5, "begin ASC"

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 867
    :goto_0
    return-object v0

    .line 863
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 865
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "Calendar"

    const-string v1, "Catch a SQLiteException when query: "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 866
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v8

    .line 867
    goto :goto_0
.end method

.method public static final query(Landroid/content/ContentResolver;[Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "cr"
    .parameter "projection"
    .parameter "begin"
    .parameter "end"
    .parameter "where"
    .parameter "orderBy"

    .prologue
    .line 873
    sget-object v0, Landroid/provider/Calendar$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 874
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 875
    invoke-static {v0, p4, p5}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 876
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    .end local p2
    if-eqz p2, :cond_0

    .line 877
    const-string/jumbo p6, "selected=1"

    .line 883
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v4, 0x0

    if-nez p7, :cond_1

    const-string p2, "begin ASC"

    move-object v5, p2

    :goto_1
    move-object v0, p0

    move-object v2, p1

    move-object v3, p6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #builder:Landroid/net/Uri$Builder;
    move-result-object p0

    .line 890
    .end local p0
    .end local p1
    :goto_2
    return-object p0

    .line 879
    .restart local v0       #builder:Landroid/net/Uri$Builder;
    .restart local p0
    .restart local p1
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ") AND "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string/jumbo p3, "selected=1"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    goto :goto_0

    :cond_1
    move-object v5, p7

    .line 883
    goto :goto_1

    .line 886
    .end local v0           #builder:Landroid/net/Uri$Builder;
    :catch_0
    move-exception p0

    .line 888
    .local p0, e:Ljava/lang/Exception;
    const-string p1, "Calendar"

    .end local p1
    const-string p2, "Catch a SQLiteException when query: "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 889
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 890
    const/4 p0, 0x0

    goto :goto_2
.end method
