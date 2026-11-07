.class public final Lcom/talkweb/secondlock/core/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final API_BASE_URL:Ljava/lang/String; = "https://pvzu.ditwan.cn"

.field public static final API_BASE_URL_TEST:Ljava/lang/String; = "http://pvzu-test.ditwan.cn:18001"

.field public static final API_BIND_PHONE:Ljava/lang/String; = "/usp/bind"

.field public static final API_QUERY_STATE:Ljava/lang/String; = "/usp/state"

.field public static final API_REBIND:Ljava/lang/String; = "/usp/rebind"

.field public static final API_REBIND_NEW_CODE:Ljava/lang/String; = "/usp/rebind/new/code"

.field public static final API_REBIND_OLD_CODE:Ljava/lang/String; = "/usp/rebind/old/code"

.field public static final API_REBIND_OLD_VERIFY:Ljava/lang/String; = "/usp/rebind/old/verify"

.field public static final API_RESET_PASSWORD:Ljava/lang/String; = "/usp/reset"

.field public static final API_SEND_BIND_SMS:Ljava/lang/String; = "/usp/bind/code"

.field public static final API_SEND_RESET_SMS:Ljava/lang/String; = "/usp/reset/code"

.field public static final API_SET_PASSWORD:Ljava/lang/String; = "/usp/set"

.field public static final API_TOGGLE_PASSWORD:Ljava/lang/String; = "/usp/toggle"

.field public static final API_VERIFY_PASSWORD:Ljava/lang/String; = "/usp/verify"

.field public static final API_VERIFY_RESET_CODE:Ljava/lang/String; = "/usp/reset/verify"

.field public static final KEY_AREA_CODE:Ljava/lang/String; = "area_code"

.field public static final KEY_BOUND_PHONE:Ljava/lang/String; = "bound_phone"

.field public static final KEY_ENABLED:Ljava/lang/String; = "enabled"

.field public static final KEY_FAIL_COUNT:Ljava/lang/String; = "fail_count"

.field public static final KEY_LOCK_UNTIL:Ljava/lang/String; = "lock_until"

.field public static final KEY_PASSWORD_HASH:Ljava/lang/String; = "password_hash"

.field public static final KEY_SALT:Ljava/lang/String; = "salt"

.field public static final KEY_SERVER_HAS_PASSWORD:Ljava/lang/String; = "server_has_password"

.field public static final KEY_SERVER_LOCKED_REMAIN_SEC:Ljava/lang/String; = "server_locked_remain_sec"

.field public static final KEY_SERVER_PHONE:Ljava/lang/String; = "server_phone"

.field public static final KEY_SERVER_PHONE_BOUND:Ljava/lang/String; = "server_phone_bound"

.field public static final LOCK_DURATION_MS:J = 0x5265c00L

.field public static final MAX_FAIL_COUNT:I = 0x5

.field public static final PASSWORD_LENGTH:I = 0x6

.field public static final PREF_PREFIX:Ljava/lang/String; = "twg_second_lock_"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
