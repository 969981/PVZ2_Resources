.class public Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;
.super Ljava/lang/Object;
.source "BaseRequestContext.java"


# instance fields
.field public bypassCookie:Z

.field public bypass_network_status_check:Z

.field public followRedirectInternal:Z

.field public force_handle_response:Z

.field public input_stream_buffer_size:I

.field public is_need_monitor_in_cancel:Z

.field public protect_timeout:J

.field public remoteIp:Ljava/lang/String;

.field public request_flag:I

.field public socket_connect_timeout:J

.field public socket_read_timeout:J

.field public socket_write_timeout:J

.field public status:I

.field public throttle_net_speed:J

.field public timeout_connect:J

.field public timeout_read:J

.field public timeout_write:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->followRedirectInternal:Z

    .line 43
    iput-boolean v0, p0, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->is_need_monitor_in_cancel:Z

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->bypassCookie:Z

    return-void
.end method
