module ddr4_64bit(
    input   [25:0]  local_address,
    input       local_write_req,
    input       local_read_req,
    input       local_burstbegin,
    input   [127:0] local_wdata,
    input   [15:0]  local_be,
    input   [2:0]   local_size,
    input       global_reset_n,
    input       pll_ref_clk,
    input       soft_reset_n,
    output      local_ready,
    output  [127:0] local_rdata,
    output      local_rdata_valid,
    output      local_refresh_ack,
    output      local_init_done,
    output      reset_phy_clk_n,
    output  [1:0]   mem_odt,
    output  [1:0]   mem_cs_n,
    output  [1:0]   mem_cke,
    output  [13:0]  mem_addr,
    output  [1:0]   mem_ba,
    output      mem_ras_n,
    output      mem_cas_n,
    output      mem_we_n,
    output  [7:0]   mem_dm,
    output      phy_clk,
    output      aux_full_rate_clk,
    output      aux_half_rate_clk,
    output      reset_request_n,
    inout   [1:0]   mem_clk,
    inout   [1:0]   mem_clk_n,
    inout   [63:0]  mem_dq,
    inout   [7:0]   mem_dqs,
    ),

DDR4 uDDR (
    local_address,
    .local_write_req(local_write_req),
    local_read_req,
    local_burstbegin,
    local_wdata,
    local_be,
    local_size,
    global_reset_n,
    pll_ref_clk,
    soft_reset_n,
    local_ready,
    local_rdata,
    local_rdata_valid,
    local_refresh_ack,
    local_init_done,
    reset_phy_clk_n,
    .mem_odt(mem_odt,)
    .mem_cs_n(mem_cs_n,)
    .mem_cke(mem_cke),
    .mem_a(mem_addr),
    .mem_ba(mem_ba),
    mem_ras_n,
    mem_cas_n,
    mem_we_n,
    mem_dm,
    .pll_ref_clk(phy_clk),
    aux_full_rate_clk,
    aux_half_rate_clk,
    reset_request_n,
    .mem_clk(mem_clk),
    .mem_clk_n(mem_clk_n),
    .mem_dq(mem_dq),
    .mem_dqs(mem_dqs)
),

endmodule

