.class public Lcom/android/music/list/data/MpListID;
.super Ljava/lang/Object;
.source "MpListID.java"


# static fields
.field public static final CALL_FROM_THREAD:Ljava/lang/String; = "CallFromThread"

.field public static final CHECK_ADD:I = 0x3

.field public static final CHECK_ADD_TO_PLAYLIST:I = 0x1

.field public static final CHECK_DELETE:I = 0x2

.field public static final CHECK_EDIT:I = 0x5

.field public static final CHECK_REMOVE:I = 0x0

.field public static final CONDTION1:[Ljava/lang/String; = null

.field public static final GO_TO_QUICKLIST:I = 0x8

.field public static final GROUP_TYPE_NORMAL:I = 0x3eb

.field public static final GROUP_TYPE_SELECTALL:I = 0x3e9

.field public static final GROUP_TYPE_SEPERATOR:I = 0x3ea

.field public static final INTENT_CHECK:Ljava/lang/String; = "Check"

.field public static final INTENT_CHECKED_LIST:Ljava/lang/String; = "CheckedList"

.field public static final INTENT_CHECK_LIST_TYPE:Ljava/lang/String; = "CheckListType"

.field public static final INTENT_CONDITIONS:Ljava/lang/String; = "Conditions"

.field public static final INTENT_FILE_NOT_FOUND:Ljava/lang/String; = "FileNotFound"

.field public static final INTENT_LIST_TYPE:Ljava/lang/String; = "ListType"

.field public static final INTENT_PLAYLIST_ID:Ljava/lang/String; = "PlaylistID"

.field public static final INTENT_ROOT_LIST_TYPE:Ljava/lang/String; = "RootListType"

.field public static final INTENT_SDCARD_NOT_FOUND:Ljava/lang/String; = "SdcardNotFound"

.field public static final INTENT_TITLE_TEXT:Ljava/lang/String; = "TitleText"

.field public static final ITEM_COUNT:I = 0x4

.field public static final ITEM_GROUP:I = 0x3

.field public static final ITEM_NOLIST:I = 0x5

.field public static final ITEM_ONELINE:I = 0x0

.field public static final ITEM_THUMNAIL_ONELINE:I = 0x1

.field public static final ITEM_THUMNAIL_TWOLINE:I = 0x2

.field public static final OPTION_ADD:I = 0x7

.field public static final OPTION_ADD_TO_PLAYLIST:I = 0x6

.field public static final OPTION_CANCEL:I = 0xe

.field public static final OPTION_COUNT:I = 0xf

.field public static final OPTION_CREATE:I = 0xa

.field public static final OPTION_DELETE:I = 0x9

.field public static final OPTION_EDIT:I = 0xb

.field public static final OPTION_EDIT_TITLE:I = 0x8

.field public static final OPTION_GOTO_DISCPLUS:I = 0x11

.field public static final OPTION_GRID_LIST:I = 0xc

.field public static final OPTION_MUSICPLAYER:I = 0x3

.field public static final OPTION_REMOVE:I = 0x1

.field public static final OPTION_REORDER:I = 0x10

.field public static final OPTION_SAVE:I = 0xd

.field public static final OPTION_SAVE_AS_PLAYLIST:I = 0x0

.field public static final OPTION_SEARCH:I = 0x2

.field public static final OPTION_SETTINGS:I = 0x5

.field public static final OPTION_SHOP:I = 0x12

.field public static final OPTION_WISHLIST:I = 0x4

.field public static final PLAYLIST_FULL:Ljava/lang/String; = "PlaylistFull"

.field public static final REQUEST_ADD_PLAYLIST:I = 0x3

.field public static final REQUEST_CAMERA_PICKED_WITH_DATA:I = 0x2

.field public static final REQUEST_PHOTO_PICKED_WITH_DATA:I = 0x1

.field public static final RESULT_ADD:I = 0x3

.field public static final RESULT_CANCEL:I = 0x4

.field public static final RESULT_OK:I = 0x2

.field public static final RESULT_PLAY:I = 0x1

.field public static final SAVELIST_TRACKLIST:I = 0x4

.field public static final SDCARD_REMOVED:I = 0x6

.field public static final SEARCH_RESULT:I = 0x7

.field public static final THREAD_ITEM_COUNT:Ljava/lang/String; = "ThreadItemCount"

.field public static final THREAD_STATE:Ljava/lang/String; = "THREAD_STATE"

.field public static final TITLE_COUNT:I = 0x3

.field public static final TITLE_EDIT:I = 0x5

.field public static final TITLE_ONELINE:I = 0x0

.field public static final TITLE_THUMNAIL_ONEEDIT:I = 0x4

.field public static final TITLE_THUMNAIL_ONELINE:I = 0x1

.field public static final TITLE_THUMNAIL_TWOLINE:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 74
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CONDITION1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CONDITION2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CONDITION3"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/music/list/data/MpListID;->CONDTION1:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
