	.file	"dirsend.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function dirsend
.LCPI0_0:
	.dword	4                               # 0x4
	.dword	0                               # 0x0
.LCPI0_1:
	.dword	0                               # 0x0
	.dword	500000                          # 0x7a120
	.text
	.globl	dirsend
	.p2align	5
	.type	dirsend,@function
dirsend:                                # @dirsend
# %bb.0:                                # %if.end.i
	addi.d	$sp, $sp, -288
	st.d	$ra, $sp, 280                   # 8-byte Folded Spill
	st.d	$fp, $sp, 272                   # 8-byte Folded Spill
	st.d	$s0, $sp, 264                   # 8-byte Folded Spill
	st.d	$s1, $sp, 256                   # 8-byte Folded Spill
	st.d	$s2, $sp, 248                   # 8-byte Folded Spill
	st.d	$s3, $sp, 240                   # 8-byte Folded Spill
	st.d	$s4, $sp, 232                   # 8-byte Folded Spill
	st.d	$s5, $sp, 224                   # 8-byte Folded Spill
	st.d	$s6, $sp, 216                   # 8-byte Folded Spill
	st.d	$s7, $sp, 208                   # 8-byte Folded Spill
	st.d	$s8, $sp, 200                   # 8-byte Folded Spill
	pcalau12i	$s7, %pc_hi20(pkt)
	st.d	$a0, $s7, %pc_lo12(pkt)
	pcalau12i	$s6, %pc_hi20(hostname)
	st.d	$a1, $s6, %pc_lo12(hostname)
	pcalau12i	$s1, %pc_hi20(hostaddr)
	st.d	$a2, $s1, %pc_lo12(hostaddr)
	pcalau12i	$a0, %pc_hi20(first)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	st.d	$zero, $a0, %pc_lo12(first)
	addi.w	$a0, $zero, -1
	pcalau12i	$s8, %pc_hi20(lp)
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.w	$a0, $s8, %pc_lo12(lp)
	pcalau12i	$s4, %pc_hi20(req_udp_port)
	st.w	$zero, $s4, %pc_lo12(req_udp_port)
	pcalau12i	$a0, %pc_hi20(scpflag)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.w	$zero, $a0, %pc_lo12(scpflag)
	pcalau12i	$a1, %pc_hi20(ackpend)
	pcalau12i	$a0, %got_pc_hi20(rdgram_priority)
	ld.d	$a2, $a0, %got_pc_lo12(rdgram_priority)
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	st.w	$zero, $a1, %pc_lo12(ackpend)
	pcalau12i	$a0, %pc_hi20(gaps)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	st.w	$zero, $a0, %pc_lo12(gaps)
	st.d	$a2, $sp, 176                   # 8-byte Folded Spill
	ld.h	$a0, $a2, 0
	pcalau12i	$a2, %pc_hi20(retries)
	ori	$a1, $zero, 3
	st.d	$a2, $sp, 192                   # 8-byte Folded Spill
	st.w	$a1, $a2, %pc_lo12(retries)
	revb.2h	$a0, $a0
	pcalau12i	$a1, %pc_hi20(priority)
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	st.h	$a0, $a1, %pc_lo12(priority)
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_0)
	pcalau12i	$a0, %pc_hi20(timeout)
	addi.d	$a1, $a0, %pc_lo12(timeout)
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	vld	$vr1, $a0, %pc_lo12(.LCPI0_1)
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	vst	$vr0, $a1, 0
	pcalau12i	$a0, %pc_hi20(ackwait)
	addi.d	$a0, $a0, %pc_lo12(ackwait)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	vst	$vr1, $a0, 0
	pcalau12i	$a0, %pc_hi20(gapwait)
	addi.d	$a1, $a0, %pc_lo12(gapwait)
	pcalau12i	$a0, %got_pc_hi20(perrno)
	ld.d	$a0, $a0, %got_pc_lo12(perrno)
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	vst	$vr0, $a1, 0
	pcalau12i	$a1, %pc_hi20(comp_thru)
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	st.d	$zero, $a1, %pc_lo12(comp_thru)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	st.w	$zero, $a0, 0
	pcalau12i	$a0, %pc_hi20(nd_pkts)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	st.w	$zero, $a0, %pc_lo12(nd_pkts)
	pcalau12i	$s3, %pc_hi20(next_conn_id)
	ld.hu	$a0, $s3, %pc_lo12(next_conn_id)
	pcalau12i	$a1, %pc_hi20(no_pkts)
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	st.w	$zero, $a1, %pc_lo12(no_pkts)
	pcalau12i	$a1, %pc_hi20(pkt_cid)
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	st.w	$zero, $a1, %pc_lo12(pkt_cid)
	beqz	$a0, .LBB0_3
# %bb.1:                                # %if.end16.i
	pcalau12i	$s5, %pc_hi20(dir_udp_port)
	ld.w	$a0, $s5, %pc_lo12(dir_udp_port)
	beqz	$a0, .LBB0_4
.LBB0_2:                                # %if.end29.i
	ld.d	$a0, $s1, %pc_lo12(hostaddr)
	pcalau12i	$a1, %pc_hi20(to)
	addi.d	$s2, $a1, %pc_lo12(to)
	bnez	$a0, .LBB0_8
	b	.LBB0_13
.LBB0_3:                                # %if.then11.i
	pcaddu18i	$ra, %call36(getpid)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(time)
	jirl	$ra, $ra, 0
	add.w	$a0, $a0, $fp
	pcaddu18i	$ra, %call36(srand)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(rand)
	jirl	$ra, $ra, 0
	st.h	$a0, $s3, %pc_lo12(next_conn_id)
	pcalau12i	$s5, %pc_hi20(dir_udp_port)
	ld.w	$a0, $s5, %pc_lo12(dir_udp_port)
	bnez	$a0, .LBB0_2
.LBB0_4:                                # %if.then19.i
	pcalau12i	$a0, %got_pc_hi20(pfs_enable)
	ld.d	$fp, $a0, %got_pc_lo12(pfs_enable)
	ld.w	$a0, $fp, 0
	pcalau12i	$s0, %pc_hi20(tmp)
	st.w	$a0, $s0, %pc_lo12(tmp)
	st.w	$zero, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(getservbyname)
	jirl	$ra, $ra, 0
	addi.d	$a1, $a0, 1
	ori	$a2, $zero, 2
	bgeu	$a1, $a2, .LBB0_6
# %bb.5:
	lu12i.w	$a0, 15
	ori	$a0, $a0, 1285
	b	.LBB0_7
.LBB0_6:                                # %if.else.i
	ld.w	$a0, $a0, 16
.LBB0_7:                                # %if.end28.i
	ld.w	$a1, $s0, %pc_lo12(tmp)
	st.w	$a0, $s5, %pc_lo12(dir_udp_port)
	st.w	$a1, $fp, 0
	ld.d	$a0, $s1, %pc_lo12(hostaddr)
	pcalau12i	$a1, %pc_hi20(to)
	addi.d	$s2, $a1, %pc_lo12(to)
	beqz	$a0, .LBB0_13
.LBB0_8:                                # %lor.lhs.false30.i
	ld.w	$a1, $a0, 4
	beqz	$a1, .LBB0_13
# %bb.9:                                # %if.else76.i
	vld	$vr0, $a0, 0
	vst	$vr0, $s2, 0
.LBB0_10:                               # %if.end77.i
	ld.wu	$a0, $s2, 4
	pcaddu18i	$ra, %call36(inet_ntoa)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(to_hostname)
	addi.d	$a0, $a0, %pc_lo12(to_hostname)
	ori	$a2, $zero, 511
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, %pc_lo12(req_udp_port)
	sltui	$a1, $a0, 1
	ld.h	$a2, $s5, %pc_lo12(dir_udp_port)
	revb.2h	$a3, $a0
	ld.d	$a0, $s1, %pc_lo12(hostaddr)
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a3
	st.h	$a1, $s2, 2
	beqz	$a0, .LBB0_23
# %bb.11:                               # %if.then88.i
	ld.hu	$a2, $a0, 2
	beqz	$a2, .LBB0_22
# %bb.12:                               # %if.then90.i
	st.h	$a2, $s2, 2
	b	.LBB0_23
.LBB0_13:                               # %if.then33.i
	ld.d	$fp, $s6, %pc_lo12(hostname)
	beqz	$fp, .LBB0_21
# %bb.14:                               # %lor.lhs.false36.i
	ld.bu	$a0, $fp, 0
	beqz	$a0, .LBB0_21
# %bb.15:                               # %if.end41.i
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	ori	$a1, $zero, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	pcalau12i	$s7, %pc_hi20(openparen)
	st.d	$a0, $s7, %pc_lo12(openparen)
	beqz	$a0, .LBB0_18
# %bb.16:                               # %if.then44.i
	addi.d	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	pcalau12i	$a2, %pc_hi20(req_udp_port)
	addi.d	$a2, $a2, %pc_lo12(req_udp_port)
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s6, %pc_lo12(hostname)
	pcalau12i	$a0, %pc_hi20(hostnoport)
	addi.d	$s0, $a0, %pc_lo12(hostnoport)
	ori	$a2, $zero, 400
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, %pc_lo12(openparen)
	sub.d	$a0, $a0, $fp
	ori	$a1, $zero, 399
	blt	$a1, $a0, .LBB0_18
# %bb.17:                               # %if.then49.i
	stx.b	$zero, $s0, $a0
	st.d	$s0, $s6, %pc_lo12(hostname)
	move	$fp, $s0
.LBB0_18:                               # %if.end55.i
	pcalau12i	$a0, %got_pc_hi20(pfs_enable)
	ld.d	$s0, $a0, %got_pc_lo12(pfs_enable)
	ld.w	$a0, $s0, 0
	pcalau12i	$s7, %pc_hi20(tmp)
	st.w	$a0, $s7, %pc_lo12(tmp)
	st.w	$zero, $s0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gethostbyname)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s7, %pc_lo12(tmp)
	pcalau12i	$a2, %pc_hi20(host)
	st.d	$a0, $a2, %pc_lo12(host)
	st.w	$a1, $s0, 0
	vrepli.b	$vr0, 0
	beqz	$a0, .LBB0_136
# %bb.19:                               # %if.else69.i
	ld.h	$a1, $a0, 16
	ld.d	$a2, $a0, 24
	vst	$vr0, $s2, 0
	st.h	$a1, $s2, 0
	ld.d	$a1, $a2, 0
	ld.w	$a2, $a0, 20
	addi.d	$a0, $s2, 4
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(hostaddr)
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_10
# %bb.20:                               # %if.then73.i
	vld	$vr0, $s2, 0
	vst	$vr0, $a0, 0
	b	.LBB0_10
.LBB0_21:                               # %if.then40.i
	ld.d	$a0, $s7, %pc_lo12(pkt)
	ori	$a1, $zero, 3
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	st.w	$a1, $a2, 0
	b	.LBB0_28
.LBB0_22:                               # %if.else92.i
	st.h	$a1, $a0, 2
.LBB0_23:                               # %if.end95.i
	ori	$a0, $zero, 2
	ori	$a1, $zero, 2
	ori	$fp, $zero, 2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(socket)
	jirl	$ra, $ra, 0
	st.w	$a0, $s8, %pc_lo12(lp)
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	bge	$a1, $a0, .LBB0_27
# %bb.24:                               # %if.end100.i
	pcalau12i	$s0, %pc_hi20(notprived)
	ld.w	$a0, $s0, %pc_lo12(notprived)
	pcalau12i	$s1, %pc_hi20(tmp)
	beqz	$a0, .LBB0_29
.LBB0_25:                               # %if.end118.i
	ld.d	$a0, $s7, %pc_lo12(pkt)
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	beqz	$a2, .LBB0_33
# %bb.26:                               # %if.then120.i
	ld.w	$a2, $a0, 0
	addi.d	$a3, $a1, -15
	st.d	$a3, $a0, 8
	addi.d	$a2, $a2, 15
	st.w	$a2, $a0, 0
	ori	$a2, $zero, 15
	st.b	$a2, $a1, -15
	ld.d	$a1, $a0, 8
	st.w	$zero, $a1, 9
	ld.d	$a1, $a0, 8
	ori	$a2, $zero, 2
	st.b	$a2, $a1, 11
	ld.d	$a1, $a0, 8
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.h	$a2, $a2, %pc_lo12(priority)
	st.h	$a2, $a1, 13
	b	.LBB0_34
.LBB0_27:                               # %if.then99.i
	ld.d	$a0, $s7, %pc_lo12(pkt)
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.w	$fp, $a1, 0
.LBB0_28:                               # %return
	pcaddu18i	$ra, %call36(ptlfree)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB0_159
.LBB0_29:                               # %for.cond.preheader.i
	ori	$a1, $zero, 901
	st.w	$a1, $s1, %pc_lo12(tmp)
	pcalau12i	$a0, %pc_hi20(us)
	addi.d	$fp, $a0, %pc_lo12(us)
	ori	$s2, $zero, 2
	ori	$s4, $zero, 98
	ori	$s5, $zero, 920
	.p2align	4, , 16
.LBB0_30:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	st.w	$zero, $fp, 12
	st.d	$zero, $fp, 4
	ld.w	$a0, $s8, %pc_lo12(lp)
	st.h	$s2, $fp, 0
	revb.2h	$a1, $a1
	st.h	$a1, $fp, 2
	ori	$a2, $zero, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(bind)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_25
# %bb.31:                               # %if.then109.i
                                        #   in Loop: Header=BB0_30 Depth=1
	pcaddu18i	$ra, %call36(__errno_location)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 0
	bne	$a0, $s4, .LBB0_138
# %bb.32:                               # %for.inc.i
                                        #   in Loop: Header=BB0_30 Depth=1
	ld.w	$a0, $s1, %pc_lo12(tmp)
	addi.d	$a1, $a0, 1
	st.w	$a1, $s1, %pc_lo12(tmp)
	blt	$a0, $s5, .LBB0_30
	b	.LBB0_25
.LBB0_33:                               # %if.else130.i
	ld.w	$a2, $a0, 0
	addi.d	$a3, $a1, -9
	st.d	$a3, $a0, 8
	addi.d	$a2, $a2, 9
	st.w	$a2, $a0, 0
	ori	$a2, $zero, 9
	st.b	$a2, $a1, -9
.LBB0_34:                               # %if.end136.i
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	ld.hu	$a1, $s3, %pc_lo12(next_conn_id)
	addi.d	$a2, $a1, 1
	lu12i.w	$a3, 16
	and	$a3, $a2, $a3
	st.h	$a2, $s3, %pc_lo12(next_conn_id)
	revb.2h	$a1, $a1
	pcalau12i	$a2, %pc_hi20(this_conn_id)
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	st.h	$a1, $a2, %pc_lo12(this_conn_id)
	beqz	$a3, .LBB0_36
# %bb.35:                               # %if.then142.i
	ori	$a2, $zero, 1
	st.h	$a2, $s3, %pc_lo12(next_conn_id)
.LBB0_36:                               # %initDirsend.exit
	ld.d	$a2, $a0, 8
	st.h	$a1, $a2, 1
	ld.d	$a1, $a0, 8
	ori	$a2, $zero, 256
	st.h	$a2, $a1, 3
	ld.d	$a1, $a0, 8
	st.h	$a2, $a1, 5
	ld.d	$a0, $a0, 8
	st.h	$zero, $a0, 7
	pcaddu18i	$ra, %call36(ptalloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s8, %pc_lo12(lp)
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(first)
	pcalau12i	$s7, %pc_hi20(next)
	st.d	$a0, $s7, %pc_lo12(next)
	bltz	$a1, .LBB0_134
# %bb.37:                               # %if.end
	pcaddu18i	$ra, %call36(retryDirsend)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(dirsendReturn)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$zero, $a0, %pc_lo12(dirsendReturn)
	pcalau12i	$a0, %pc_hi20(dirsendDone)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	st.w	$zero, $a0, %pc_lo12(dirsendDone)
	pcalau12i	$s0, %pc_hi20(selwait)
	pcalau12i	$a0, %pc_hi20(readfds)
	addi.d	$fp, $a0, %pc_lo12(readfds)
	ori	$s2, $zero, 1
	pcalau12i	$a0, %pc_hi20(from_sz)
	addi.d	$a0, $a0, %pc_lo12(from_sz)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(from)
	addi.d	$a0, $a0, %pc_lo12(from)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ctlptr)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	b	.LBB0_39
	.p2align	4, , 16
.LBB0_38:                               # %processEvent.exit
                                        #   in Loop: Header=BB0_39 Depth=1
	pcaddu18i	$ra, %call36(retryDirsend)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(dirsendDone)
	bnez	$a0, .LBB0_158
.LBB0_39:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_117 Depth 2
                                        #     Child Loop BB0_126 Depth 2
	ld.w	$a0, $s8, %pc_lo12(lp)
	ld.d	$a4, $s0, %pc_lo12(selwait)
	addi.w	$a0, $a0, 1
	move	$a1, $fp
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(select)
	jirl	$ra, $ra, 0
	st.w	$a0, $s1, %pc_lo12(tmp)
	beqz	$a0, .LBB0_52
# %bb.40:                               # %if.else.i3
                                        #   in Loop: Header=BB0_39 Depth=1
	move	$a1, $a0
	ld.w	$a0, $s8, %pc_lo12(lp)
	bltz	$a1, .LBB0_135
# %bb.41:                               # %lor.lhs.false.i
                                        #   in Loop: Header=BB0_39 Depth=1
	bstrpick.d	$a1, $a0, 62, 57
	add.d	$a1, $a0, $a1
	addi.w	$a2, $a1, 0
	srai.d	$a2, $a2, 6
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $fp, $a2
	bstrpick.d	$a1, $a1, 31, 6
	slli.d	$a1, $a1, 6
	sub.d	$a1, $a0, $a1
	srl.d	$a1, $a2, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_135
# %bb.42:                               # %if.else5.i
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.d	$a2, $s7, %pc_lo12(next)
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
	ori	$a1, $zero, 16
	st.w	$a1, $a5, 0
	addi.d	$a1, $a2, 16
	st.d	$a1, $a2, 8
	ori	$a2, $zero, 1314
	move	$a3, $zero
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(recvfrom)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	bge	$a2, $a1, .LBB0_139
# %bb.43:                               # %if.end.i3.i
                                        #   in Loop: Header=BB0_39 Depth=1
	ori	$s6, $zero, 1
	ld.d	$s2, $s7, %pc_lo12(next)
	ld.d	$a1, $s2, 8
	st.w	$a0, $s2, 0
	bstrpick.d	$a0, $a0, 30, 0
	stx.b	$zero, $a1, $a0
	ld.d	$s4, $s2, 8
	ld.bu	$a0, $s4, 0
	ori	$a1, $zero, 19
	bltu	$a1, $a0, .LBB0_55
# %bb.44:                               # %if.then10.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	addi.d	$a1, $s4, 1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	st.d	$a1, $a2, %pc_lo12(ctlptr)
	st.w	$zero, $s2, 1360
	ori	$a5, $zero, 3
	bltu	$a0, $a5, .LBB0_48
# %bb.45:                               # %if.then14.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.hu	$a1, $a1, 0
	beqz	$a1, .LBB0_47
# %bb.46:                               # %if.then15.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	revb.2h	$a1, $a1
	bstrpick.d	$a1, $a1, 15, 0
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	st.w	$a1, $a2, %pc_lo12(pkt_cid)
.LBB0_47:                               # %if.end18.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	addi.d	$a1, $s4, 3
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	st.d	$a1, $a2, %pc_lo12(ctlptr)
.LBB0_48:                               # %if.end20.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(pkt_cid)
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	beqz	$a2, .LBB0_62
# %bb.49:                               # %if.end20.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ld.hu	$a3, $a3, %pc_lo12(this_conn_id)
	beqz	$a3, .LBB0_62
# %bb.50:                               # %if.end20.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	beq	$a2, $a3, .LBB0_62
.LBB0_51:                               # %if.then28.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	ori	$a2, $zero, 128
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(lp)
	bstrpick.d	$a1, $a0, 62, 57
	add.d	$a1, $a0, $a1
	addi.w	$a2, $a1, 0
	srai.d	$a2, $a2, 6
	bstrpick.d	$a1, $a1, 31, 6
	slli.d	$a1, $a1, 6
	sub.d	$a0, $a0, $a1
	slli.d	$a1, $a2, 3
	ldx.d	$a2, $fp, $a1
	ori	$s2, $zero, 1
	b	.LBB0_132
	.p2align	4, , 16
.LBB0_52:                               # %if.then.i4
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.w	$a0, $s5, %pc_lo12(gaps)
	ld.w	$a1, $s3, %pc_lo12(ackpend)
	or	$a0, $a0, $a1
	bnez	$a0, .LBB0_38
# %bb.53:                               # %if.end.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a0, $a2, %pc_lo12(retries)
	addi.d	$a1, $a0, -1
	st.w	$a1, $a2, %pc_lo12(retries)
	blt	$a0, $s2, .LBB0_154
# %bb.54:                               # %if.then2.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 0
	slli.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	b	.LBB0_38
	.p2align	4, , 16
.LBB0_55:                               # %if.end121.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	st.w	$zero, $a0, %pc_lo12(pkt_cid)
	ld.w	$s5, $s2, 0
	ori	$a1, $zero, 20
	slt	$a0, $a1, $s5
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s5, $a0
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, -20
	add.d	$s3, $s4, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a2, $s3, $a0
	addi.d	$a0, $a2, 1
	add.d	$a1, $s4, $s5
	addi.d	$a3, $a1, -4
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	st.d	$a0, $a4, %pc_lo12(ctlptr)
	bgeu	$a0, $a3, .LBB0_58
# %bb.56:                               # %if.then140.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.hu	$a0, $a0, 0
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_88
# %bb.57:                               # %if.then142.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	revb.2h	$a0, $a0
	bstrpick.d	$a3, $a0, 15, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	st.w	$a3, $a0, %pc_lo12(pkt_cid)
	addi.d	$a0, $a2, 3
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	st.d	$a0, $a4, %pc_lo12(ctlptr)
	bnez	$a3, .LBB0_89
	b	.LBB0_92
.LBB0_58:                               # %if.end212.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	ori	$a1, $zero, 40
	slt	$a0, $a1, $s5
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s5, $a0
	or	$a0, $a0, $a1
	add.d	$a0, $s4, $a0
	addi.d	$a0, $a0, -40
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(nlsindex)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	sltui	$a0, $a0, 1
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(nd_pkts)
	addi.d	$a3, $a1, 13
	masknez	$a0, $a3, $a0
	pcalau12i	$a3, %pc_hi20(seqtxt)
	st.d	$a0, $a3, %pc_lo12(seqtxt)
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_61
# %bb.59:                               # %if.end212.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(no_pkts)
	bnez	$a2, .LBB0_61
# %bb.60:                               # %if.end212.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	beqz	$a1, .LBB0_140
.LBB0_61:                               # %if.end240.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	ori	$s6, $zero, 1
	ld.d	$a1, $s7, %pc_lo12(next)
	addi.d	$a2, $a1, 1360
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcalau12i	$a3, %pc_hi20(nd_pkts)
	addi.d	$a3, $a3, %pc_lo12(nd_pkts)
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s7, %pc_lo12(next)
	st.w	$a0, $s1, %pc_lo12(tmp)
	ori	$a5, $zero, 3
	b	.LBB0_105
.LBB0_62:                               # %if.end29.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	ori	$a2, $zero, 4
	bgeu	$a2, $a0, .LBB0_87
# %bb.63:                               # %if.end38.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.h	$a2, $a1, 0
	revb.2h	$a2, $a2
	bstrpick.d	$a2, $a2, 15, 0
	st.w	$a2, $s2, 1360
	addi.d	$a3, $a1, 2
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	st.d	$a3, $a4, %pc_lo12(ctlptr)
	ori	$a4, $zero, 7
	bltu	$a0, $a4, .LBB0_83
# %bb.64:                               # %if.then41.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.hu	$a2, $a3, 0
	beqz	$a2, .LBB0_66
# %bb.65:                               # %if.then43.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	revb.2h	$a2, $a2
	bstrpick.d	$a2, $a2, 15, 0
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	st.w	$a2, $a3, %pc_lo12(nd_pkts)
.LBB0_66:                               # %if.end48.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	addi.d	$a2, $a1, 4
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	st.d	$a2, $a3, %pc_lo12(ctlptr)
	ori	$a3, $zero, 9
	bltu	$a0, $a3, .LBB0_82
# %bb.67:                               # %if.then51.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.hu	$a2, $a2, 0
	ori	$a3, $zero, 256
	bne	$a2, $a3, .LBB0_69
# %bb.68:                               # %if.then59.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(pkt)
	ld.d	$a3, $a2, 8
	ori	$a4, $zero, 9
	st.w	$a4, $a2, 0
	st.h	$zero, $a3, 3
.LBB0_69:                               # %if.end65.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	addi.d	$a2, $a1, 6
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	st.d	$a2, $a3, %pc_lo12(ctlptr)
	ori	$a3, $zero, 11
	bltu	$a0, $a3, .LBB0_82
# %bb.70:                               # %if.then68.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.hu	$a2, $a2, 0
	beqz	$a2, .LBB0_75
# %bb.71:                               # %if.then70.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	revb.2h	$a2, $a2
	bstrpick.d	$a2, $a2, 15, 0
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	st.d	$a2, $a3, 0
	ori	$a3, $zero, 61
	bltu	$a2, $a3, .LBB0_75
# %bb.72:                               # %land.lhs.true76.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(first)
	bne	$a2, $s2, .LBB0_75
# %bb.73:                               # %land.lhs.true76.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(no_pkts)
	bnez	$a2, .LBB0_75
# %bb.74:                               # %if.then82.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	st.w	$a5, $a2, %pc_lo12(retries)
.LBB0_75:                               # %if.end86.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	addi.d	$a2, $a1, 8
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	st.d	$a2, $a3, %pc_lo12(ctlptr)
	ori	$a3, $zero, 11
	beq	$a0, $a3, .LBB0_82
# %bb.76:                               # %if.then89.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.b	$a2, $a2, 0
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	blt	$a3, $a2, .LBB0_78
# %bb.77:                               # %if.then92.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.w	$a3, $s3, %pc_lo12(ackpend)
	addi.d	$a3, $a3, 1
	st.w	$a3, $s3, %pc_lo12(ackpend)
.LBB0_78:                               # %if.end93.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	andi	$a2, $a2, 255
	andi	$a2, $a2, 64
	beqz	$a2, .LBB0_80
# %bb.79:                               # %if.then97.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	st.w	$a2, $s2, 0
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a2, $a3, %pc_lo12(scpflag)
	addi.d	$a2, $a2, 1
	st.w	$a2, $a3, %pc_lo12(scpflag)
.LBB0_80:                               # %if.end102.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	addi.d	$a2, $a1, 9
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	st.d	$a2, $a3, %pc_lo12(ctlptr)
	ori	$a2, $zero, 13
	bltu	$a0, $a2, .LBB0_82
# %bb.81:                               # %if.then105.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	addi.d	$a1, $a1, 10
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	st.d	$a1, $a2, %pc_lo12(ctlptr)
.LBB0_82:                               # %if.end107thread-pre-split.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.w	$a2, $s2, 1360
.LBB0_83:                               # %if.end107.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	beqz	$a2, .LBB0_51
# %bb.84:                               # %if.end112.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.w	$a1, $s2, 0
	bltz	$a1, .LBB0_86
.LBB0_85:                               # %if.then116.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	sub.d	$a1, $a1, $a0
	st.w	$a1, $s2, 0
.LBB0_86:                               # %if.end118.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.d	$a1, $s2, 8
	add.d	$a0, $a1, $a0
	st.d	$a0, $s2, 8
	b	.LBB0_105
.LBB0_87:                               # %if.end107.thread.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	ori	$a2, $zero, 1
	st.w	$a2, $s2, 1360
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ori	$s6, $zero, 1
	st.w	$a2, $a1, %pc_lo12(nd_pkts)
	ld.w	$a1, $s2, 0
	bgez	$a1, .LBB0_85
	b	.LBB0_86
.LBB0_88:                               #   in Loop: Header=BB0_39 Depth=1
	move	$a3, $zero
	addi.d	$a0, $a2, 3
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	st.d	$a0, $a4, %pc_lo12(ctlptr)
	beqz	$a3, .LBB0_92
.LBB0_89:                               # %if.end145.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	ld.hu	$a4, $a4, %pc_lo12(this_conn_id)
	beqz	$a4, .LBB0_92
# %bb.90:                               # %if.end145.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	beq	$a3, $a4, .LBB0_92
# %bb.91:                               # %if.then155.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	ori	$a2, $zero, 128
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(lp)
	bstrpick.d	$a1, $a0, 62, 57
	add.d	$a1, $a0, $a1
	addi.w	$a2, $a1, 0
	srai.d	$a2, $a2, 6
	bstrpick.d	$a1, $a1, 31, 6
	slli.d	$a1, $a1, 6
	sub.d	$a0, $a0, $a1
	slli.d	$a1, $a2, 3
	ldx.d	$a2, $fp, $a1
	ori	$s2, $zero, 1
	sll.d	$a0, $s2, $a0
	ld.w	$a3, $s3, %pc_lo12(ackpend)
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	b	.LBB0_133
.LBB0_92:                               # %if.end156.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	bgeu	$a0, $a1, .LBB0_97
# %bb.93:                               # %if.then163.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.h	$a0, $a2, 3
	revb.2h	$a0, $a0
	bstrpick.d	$a0, $a0, 15, 0
	st.w	$a0, $s2, 1360
	addi.d	$a0, $a2, 5
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(ctlptr)
	ori	$a5, $zero, 3
	bltu	$a0, $a1, .LBB0_98
.LBB0_94:                               # %if.end182.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	add.d	$a1, $s4, $s5
	bgeu	$a0, $a1, .LBB0_101
.LBB0_95:                               # %if.then189.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	addi.d	$a0, $a0, 2
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(ctlptr)
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	bltu	$a0, $a1, .LBB0_102
.LBB0_96:                               # %if.end206.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.w	$a0, $s2, 1360
	bnez	$a0, .LBB0_105
	b	.LBB0_51
.LBB0_97:                               # %if.end168.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	ori	$a5, $zero, 3
	bgeu	$a0, $a1, .LBB0_94
.LBB0_98:                               # %if.then175.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.hu	$a1, $a0, 0
	beqz	$a1, .LBB0_100
# %bb.99:                               # %if.then177.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	revb.2h	$a1, $a1
	bstrpick.d	$a1, $a1, 15, 0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.w	$a1, $a2, %pc_lo12(nd_pkts)
	ld.w	$s5, $s2, 0
.LBB0_100:                              # %if.end180.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	addi.d	$a0, $a0, 2
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(ctlptr)
	add.d	$a1, $s4, $s5
	bltu	$a0, $a1, .LBB0_95
.LBB0_101:                              # %if.end191.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	bgeu	$a0, $a1, .LBB0_96
.LBB0_102:                              # %if.then198.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.hu	$a1, $a0, 0
	beqz	$a1, .LBB0_104
# %bb.103:                              # %if.then202.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	revb.2h	$a1, $a1
	bstrpick.d	$a1, $a1, 15, 0
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	st.d	$a1, $a2, 0
.LBB0_104:                              # %if.end204.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	addi.d	$a0, $a0, 2
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(ctlptr)
	ld.w	$a0, $s2, 1360
	beqz	$a0, .LBB0_51
	.p2align	4, , 16
.LBB0_105:                              # %done_old.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a2, $a0, %pc_lo12(first)
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(no_pkts)
	bne	$a2, $s2, .LBB0_109
# %bb.106:                              # %done_old.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	bnez	$a0, .LBB0_109
# %bb.107:                              # %if.then248.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.w	$a0, $a2, 1360
	ori	$s2, $zero, 1
	bne	$a0, $s2, .LBB0_114
# %bb.108:                              # %if.then252.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(nd_pkts)
	st.d	$a2, $s4, %pc_lo12(comp_thru)
	bne	$a0, $s2, .LBB0_115
	b	.LBB0_140
.LBB0_109:                              # %if.end261.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.d	$a3, $s4, %pc_lo12(comp_thru)
	ld.w	$a1, $s2, 1360
	beqz	$a3, .LBB0_111
# %bb.110:                              # %land.lhs.true263.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.w	$a4, $a3, 1360
	bge	$a4, $a1, .LBB0_121
.LBB0_111:                              # %if.else269.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.w	$a4, $a2, 1360
	bge	$a1, $a4, .LBB0_116
# %bb.112:                              # %if.then274.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	pcalau12i	$a3, %pc_hi20(vtmp)
	st.d	$a2, $a3, %pc_lo12(vtmp)
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	st.d	$s2, $a3, %pc_lo12(first)
	st.d	$a2, $s2, 1352
	st.d	$zero, $s2, 1344
	st.d	$s2, $a2, 1344
	bne	$a1, $s6, .LBB0_123
# %bb.113:                              # %if.then279.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	st.d	$s2, $s4, %pc_lo12(comp_thru)
	b	.LBB0_123
.LBB0_114:                              # %if.else257.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.w	$a0, $s5, %pc_lo12(gaps)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(gaps)
.LBB0_115:                              # %if.end259.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	st.w	$s2, $a0, %pc_lo12(no_pkts)
	b	.LBB0_131
.LBB0_116:                              # %if.else282.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	sltui	$a4, $a3, 1
	masknez	$a3, $a3, $a4
	maskeqz	$a2, $a2, $a4
	or	$a3, $a2, $a3
	.p2align	4, , 16
.LBB0_117:                              # %while.cond288.i.i
                                        #   Parent Loop BB0_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a2, $a3
	ld.w	$a3, $a3, 1360
	bge	$a3, $a1, .LBB0_120
# %bb.118:                              # %while.body293.i.i
                                        #   in Loop: Header=BB0_117 Depth=2
	ld.d	$a3, $a2, 1352
	bnez	$a3, .LBB0_117
# %bb.119:                              # %if.then297.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	pcalau12i	$a1, %pc_hi20(vtmp)
	st.d	$a2, $a1, %pc_lo12(vtmp)
	st.d	$s2, $a2, 1352
	st.d	$a2, $s2, 1344
	st.d	$zero, $s2, 1352
	b	.LBB0_123
.LBB0_120:                              # %while.end304.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	pcalau12i	$a4, %pc_hi20(vtmp)
	st.d	$a2, $a4, %pc_lo12(vtmp)
	bne	$a3, $a1, .LBB0_122
.LBB0_121:                              # %if.then268.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(ptfree)
	jirl	$ra, $ra, 0
	ori	$a5, $zero, 3
	ld.d	$a0, $s4, %pc_lo12(comp_thru)
	ori	$s2, $zero, 1
	bnez	$a0, .LBB0_124
	b	.LBB0_129
.LBB0_122:                              # %if.else310.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.d	$a1, $a2, 1344
	st.d	$s2, $a1, 1352
	st.d	$a1, $s2, 1344
	st.d	$a2, $s2, 1352
	st.d	$s2, $a2, 1344
.LBB0_123:                              # %ins_done.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	addi.d	$a0, $a0, 1
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	st.w	$a0, $a1, %pc_lo12(no_pkts)
	ld.d	$a0, $s4, %pc_lo12(comp_thru)
	ori	$s2, $zero, 1
	beqz	$a0, .LBB0_129
.LBB0_124:                              # %land.lhs.true323.lr.ph.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.d	$a2, $a0, 1352
	beqz	$a2, .LBB0_128
# %bb.125:                              # %land.rhs.i.i.preheader
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(pkt)
	.p2align	4, , 16
.LBB0_126:                              # %land.rhs.i.i
                                        #   Parent Loop BB0_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a0, 1360
	move	$a0, $a2
	ld.w	$a2, $a2, 1360
	addi.w	$a3, $a3, 1
	bne	$a2, $a3, .LBB0_129
# %bb.127:                              # %while.body331.i.i
                                        #   in Loop: Header=BB0_126 Depth=2
	ld.d	$a3, $a1, 8
	st.d	$a0, $s4, %pc_lo12(comp_thru)
	revb.2h	$a2, $a2
	st.h	$a2, $a3, 7
	ld.d	$a2, $a0, 1352
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	st.w	$a5, $a3, %pc_lo12(retries)
	bnez	$a2, .LBB0_126
.LBB0_128:                              #   in Loop: Header=BB0_39 Depth=1
	move	$a0, $zero
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(nd_pkts)
	st.w	$a0, $s5, %pc_lo12(gaps)
	bnez	$a1, .LBB0_130
	b	.LBB0_131
.LBB0_129:                              # %if.then342.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.w	$a0, $s5, %pc_lo12(gaps)
	addi.d	$a0, $a0, 1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(nd_pkts)
	st.w	$a0, $s5, %pc_lo12(gaps)
	beqz	$a1, .LBB0_131
.LBB0_130:                              # %if.end345.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(no_pkts)
	bge	$a0, $a1, .LBB0_140
.LBB0_131:                              # %if.then351.i.i
                                        #   in Loop: Header=BB0_39 Depth=1
	pcaddu18i	$ra, %call36(ptalloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, %pc_lo12(next)
	ori	$a2, $zero, 128
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(lp)
	bstrpick.d	$a1, $a0, 62, 57
	add.d	$a1, $a0, $a1
	addi.w	$a2, $a1, 0
	srai.d	$a2, $a2, 6
	bstrpick.d	$a1, $a1, 31, 6
	slli.d	$a1, $a1, 6
	sub.d	$a0, $a0, $a1
	slli.d	$a1, $a2, 3
	ldx.d	$a2, $fp, $a1
.LBB0_132:                              # %processEvent.exit
                                        #   in Loop: Header=BB0_39 Depth=1
	sll.d	$a0, $s2, $a0
	ld.w	$a3, $s3, %pc_lo12(ackpend)
.LBB0_133:                              # %processEvent.exit
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.w	$a4, $s5, %pc_lo12(gaps)
	or	$a0, $a0, $a2
	stx.d	$a0, $fp, $a1
	sltui	$a0, $a3, 1
	sltui	$a1, $a4, 1
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	masknez	$a2, $a2, $a1
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	maskeqz	$a1, $a1, $a0
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	masknez	$a0, $a2, $a0
	or	$a0, $a1, $a0
	st.d	$a0, $s0, %pc_lo12(selwait)
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(dirsendDone)
	beqz	$a0, .LBB0_39
	b	.LBB0_158
.LBB0_134:
	move	$a0, $zero
	b	.LBB0_159
.LBB0_135:                              # %if.then3.i
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(first)
	ori	$a1, $zero, 5
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	st.w	$a1, $a2, 0
	pcaddu18i	$ra, %call36(ptlfree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(pkt)
	pcaddu18i	$ra, %call36(ptlfree)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.d	$fp, $zero, -3
	b	.LBB0_157
.LBB0_136:                              # %if.then59.i
	ld.d	$a0, $s6, %pc_lo12(hostname)
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(inet_addr)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(hostaddr)
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $s2, 0
	ori	$a2, $zero, 2
	st.h	$a2, $s2, 0
	st.w	$a0, $s2, 4
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	beqz	$a1, .LBB0_10
# %bb.137:                              # %if.then67.i
	vld	$vr0, $s2, 0
	vst	$vr0, $a1, 0
	b	.LBB0_10
.LBB0_138:                              # %if.then113.i
	ld.w	$a0, $s0, %pc_lo12(notprived)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, %pc_lo12(notprived)
	b	.LBB0_25
.LBB0_139:                              # %if.then.i4.i
	ld.w	$a0, $s8, %pc_lo12(lp)
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(first)
	ori	$a1, $zero, 6
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	st.w	$a1, $a2, 0
	pcaddu18i	$ra, %call36(ptlfree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(pkt)
	pcaddu18i	$ra, %call36(ptlfree)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.d	$fp, $zero, -2
	b	.LBB0_157
.LBB0_140:                              # %all_done.i.i
	ld.w	$a0, $s3, %pc_lo12(ackpend)
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_142
# %bb.141:                              # %if.then355.i.i
	ld.d	$a2, $fp, %pc_lo12(pkt)
	ld.w	$a0, $s8, %pc_lo12(lp)
	ld.d	$a1, $a2, 8
	ld.w	$a2, $a2, 0
	pcalau12i	$a3, %pc_hi20(to)
	addi.d	$a4, $a3, %pc_lo12(to)
	ori	$a5, $zero, 16
	move	$a3, $zero
	pcaddu18i	$ra, %call36(sendto)
	jirl	$ra, $ra, 0
.LBB0_142:                              # %if.end366.i.i
	ld.w	$a0, $s8, %pc_lo12(lp)
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(pkt)
	pcaddu18i	$ra, %call36(ptlfree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(scpflag)
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(first)
	ori	$fp, $zero, 1
	beqz	$a1, .LBB0_157
# %bb.143:                              # %while.cond370.preheader.i.i
	pcalau12i	$s0, %pc_hi20(vtmp)
	bnez	$a0, .LBB0_146
.LBB0_144:                              # %while.end383.thread.i.i
	move	$a0, $zero
	st.d	$zero, $s0, %pc_lo12(vtmp)
	b	.LBB0_157
.LBB0_145:                              # %if.end382.i.i
                                        #   in Loop: Header=BB0_146 Depth=1
	pcaddu18i	$ra, %call36(ptfree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(first)
	beqz	$a0, .LBB0_144
.LBB0_146:                              # %land.rhs372.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a0, 0
	st.d	$a0, $s0, %pc_lo12(vtmp)
	bgez	$a1, .LBB0_150
# %bb.147:                              # %while.body377.i.i
                                        #   in Loop: Header=BB0_146 Depth=1
	ld.d	$a1, $a0, 1352
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	st.d	$a1, $a2, %pc_lo12(first)
	beqz	$a1, .LBB0_145
# %bb.148:                              # %if.then380.i.i
                                        #   in Loop: Header=BB0_146 Depth=1
	st.d	$zero, $a1, 1344
	b	.LBB0_145
.LBB0_149:                              # %if.end411.i.i
                                        #   in Loop: Header=BB0_150 Depth=1
	st.d	$a1, $s0, %pc_lo12(vtmp)
	move	$a0, $a1
	beqz	$a1, .LBB0_156
.LBB0_150:                              # %land.rhs386.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a0, 1352
	beqz	$a1, .LBB0_156
# %bb.151:                              # %while.body390.i.i
                                        #   in Loop: Header=BB0_150 Depth=1
	ld.w	$a2, $a1, 0
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	blt	$a3, $a2, .LBB0_149
# %bb.152:                              # %if.then395.i.i
                                        #   in Loop: Header=BB0_150 Depth=1
	ld.d	$a2, $a1, 1352
	beqz	$a2, .LBB0_155
# %bb.153:                              # %if.then399.i.i
                                        #   in Loop: Header=BB0_150 Depth=1
	ld.d	$a1, $a2, 1344
	st.d	$a2, $a0, 1352
	move	$a0, $a1
	pcaddu18i	$ra, %call36(ptfree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(vtmp)
	ld.d	$a1, $a0, 1352
	st.d	$a0, $a1, 1344
	ld.d	$a1, $a0, 1352
	b	.LBB0_149
.LBB0_154:                              # %if.end3.i.i
	ld.w	$a0, $s8, %pc_lo12(lp)
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(first)
	ori	$a1, $zero, 5
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	st.w	$a1, $a2, 0
	pcaddu18i	$ra, %call36(ptlfree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(pkt)
	pcaddu18i	$ra, %call36(ptlfree)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.d	$fp, $zero, -4
	b	.LBB0_157
.LBB0_155:                              # %if.end411.thread.i.i
	move	$a0, $a1
	pcaddu18i	$ra, %call36(ptfree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(vtmp)
	st.d	$zero, $a0, 1352
	st.d	$zero, $s0, %pc_lo12(vtmp)
.LBB0_156:                              # %if.end414.loopexit.i.i
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(first)
.LBB0_157:                              # %while.end.sink.split
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(dirsendReturn)
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	st.w	$fp, $a0, %pc_lo12(dirsendDone)
.LBB0_158:                              # %while.end
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(dirsendReturn)
.LBB0_159:                              # %return
	ld.d	$s8, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 280                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 288
	ret
.Lfunc_end0:
	.size	dirsend, .Lfunc_end0-dirsend
                                        # -- End function
	.globl	abortDirsend                    # -- Begin function abortDirsend
	.p2align	5
	.type	abortDirsend,@function
abortDirsend:                           # @abortDirsend
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(dirsendDone)
	ld.w	$a0, $fp, %pc_lo12(dirsendDone)
	beqz	$a0, .LBB1_2
# %bb.1:                                # %if.end
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB1_2:                                # %if.then
	pcalau12i	$a0, %pc_hi20(lp)
	ld.w	$a0, $a0, %pc_lo12(lp)
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(first)
	ld.d	$a0, $a0, %pc_lo12(first)
	pcaddu18i	$ra, %call36(ptlfree)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(pkt)
	ld.d	$a0, $a0, %pc_lo12(pkt)
	pcaddu18i	$ra, %call36(ptlfree)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(dirsendReturn)
	st.d	$zero, $a0, %pc_lo12(dirsendReturn)
	addi.w	$a0, $zero, -5
	lu32i.d	$a0, 0
	st.w	$a0, $fp, %pc_lo12(dirsendDone)
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	abortDirsend, .Lfunc_end1-abortDirsend
                                        # -- End function
	.p2align	5                               # -- Begin function retryDirsend
	.type	retryDirsend,@function
retryDirsend:                           # @retryDirsend
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(ackpend)
	st.w	$zero, $s0, %pc_lo12(ackpend)
	pcalau12i	$s1, %pc_hi20(gaps)
	pcalau12i	$fp, %pc_hi20(pkt)
	ld.d	$a2, $fp, %pc_lo12(pkt)
	st.w	$zero, $s1, %pc_lo12(gaps)
	pcalau12i	$s2, %pc_hi20(lp)
	ld.w	$a0, $s2, %pc_lo12(lp)
	ld.d	$a1, $a2, 8
	ld.w	$a2, $a2, 0
	pcalau12i	$a3, %pc_hi20(to)
	addi.d	$a4, $a3, %pc_lo12(to)
	ori	$a5, $zero, 16
	move	$a3, $zero
	pcaddu18i	$ra, %call36(sendto)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, %pc_lo12(pkt)
	ld.w	$a1, $a1, 0
	addi.w	$a0, $a0, 0
	beq	$a1, $a0, .LBB2_2
# %bb.1:                                # %if.then
	ld.w	$a0, $s2, %pc_lo12(lp)
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(perrno)
	ld.d	$a1, $a0, %got_pc_lo12(perrno)
	pcalau12i	$a0, %pc_hi20(first)
	ld.d	$a0, $a0, %pc_lo12(first)
	ori	$a2, $zero, 4
	st.w	$a2, $a1, 0
	pcaddu18i	$ra, %call36(ptlfree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(pkt)
	pcaddu18i	$ra, %call36(ptlfree)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(dirsendReturn)
	st.d	$zero, $a0, %pc_lo12(dirsendReturn)
	pcalau12i	$a0, %pc_hi20(dirsendDone)
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	st.w	$a1, $a0, %pc_lo12(dirsendDone)
.LBB2_2:                                # %if.end
	pcalau12i	$a0, %pc_hi20(readfds)
	addi.d	$fp, $a0, %pc_lo12(readfds)
	ori	$a2, $zero, 128
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, %pc_lo12(lp)
	bstrpick.d	$a1, $a0, 62, 57
	add.d	$a1, $a0, $a1
	addi.w	$a2, $a1, 0
	srai.d	$a2, $a2, 6
	bstrpick.d	$a1, $a1, 31, 6
	slli.d	$a1, $a1, 6
	sub.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	slli.d	$a2, $a2, 3
	ldx.d	$a3, $fp, $a2
	sll.d	$a0, $a1, $a0
	ld.w	$a1, $s0, %pc_lo12(ackpend)
	ld.w	$a4, $s1, %pc_lo12(gaps)
	or	$a0, $a0, $a3
	stx.d	$a0, $fp, $a2
	sltui	$a0, $a1, 1
	sltui	$a1, $a4, 1
	pcalau12i	$a2, %pc_hi20(gapwait)
	addi.d	$a2, $a2, %pc_lo12(gapwait)
	masknez	$a2, $a2, $a1
	pcalau12i	$a3, %pc_hi20(timeout)
	addi.d	$a3, $a3, %pc_lo12(timeout)
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	maskeqz	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(ackwait)
	addi.d	$a2, $a2, %pc_lo12(ackwait)
	masknez	$a0, $a2, $a0
	or	$a0, $a1, $a0
	pcalau12i	$a1, %pc_hi20(selwait)
	st.d	$a0, $a1, %pc_lo12(selwait)
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end2:
	.size	retryDirsend, .Lfunc_end2-retryDirsend
                                        # -- End function
	.type	pkt,@object                     # @pkt
	.local	pkt
	.comm	pkt,8,8
	.type	hostname,@object                # @hostname
	.local	hostname
	.comm	hostname,8,8
	.type	hostaddr,@object                # @hostaddr
	.local	hostaddr
	.comm	hostaddr,8,8
	.type	first,@object                   # @first
	.local	first
	.comm	first,8,8
	.type	lp,@object                      # @lp
	.data
	.p2align	2, 0x0
lp:
	.word	4294967295                      # 0xffffffff
	.size	lp, 4

	.type	req_udp_port,@object            # @req_udp_port
	.local	req_udp_port
	.comm	req_udp_port,4,4
	.type	scpflag,@object                 # @scpflag
	.local	scpflag
	.comm	scpflag,4,4
	.type	ackpend,@object                 # @ackpend
	.local	ackpend
	.comm	ackpend,4,4
	.type	gaps,@object                    # @gaps
	.local	gaps
	.comm	gaps,4,4
	.type	retries,@object                 # @retries
	.local	retries
	.comm	retries,4,4
	.type	dirsendReturn,@object           # @dirsendReturn
	.local	dirsendReturn
	.comm	dirsendReturn,8,8
	.type	dirsendDone,@object             # @dirsendDone
	.local	dirsendDone
	.comm	dirsendDone,4,4
	.type	to_hostname,@object             # @to_hostname
	.bss
	.globl	to_hostname
to_hostname:
	.space	512
	.size	to_hostname, 512

	.type	priority,@object                # @priority
	.local	priority
	.comm	priority,2,2
	.type	timeout,@object                 # @timeout
	.local	timeout
	.comm	timeout,16,16
	.type	ackwait,@object                 # @ackwait
	.local	ackwait
	.comm	ackwait,16,16
	.type	gapwait,@object                 # @gapwait
	.local	gapwait
	.comm	gapwait,16,16
	.type	comp_thru,@object               # @comp_thru
	.local	comp_thru
	.comm	comp_thru,8,8
	.type	nd_pkts,@object                 # @nd_pkts
	.local	nd_pkts
	.comm	nd_pkts,4,4
	.type	no_pkts,@object                 # @no_pkts
	.local	no_pkts
	.comm	no_pkts,4,4
	.type	pkt_cid,@object                 # @pkt_cid
	.local	pkt_cid
	.comm	pkt_cid,4,4
	.type	next_conn_id,@object            # @next_conn_id
	.local	next_conn_id
	.comm	next_conn_id,2,2
	.type	dir_udp_port,@object            # @dir_udp_port
	.local	dir_udp_port
	.comm	dir_udp_port,4,4
	.type	tmp,@object                     # @tmp
	.local	tmp
	.comm	tmp,4,4
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"dirsrv"
	.size	.L.str, 7

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"udp"
	.size	.L.str.1, 4

	.type	openparen,@object               # @openparen
	.local	openparen
	.comm	openparen,8,8
	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"%d"
	.size	.L.str.2, 3

	.type	hostnoport,@object              # @hostnoport
	.local	hostnoport
	.comm	hostnoport,500,1
	.type	host,@object                    # @host
	.local	host
	.comm	host,8,8
	.type	to,@object                      # @to
	.local	to
	.comm	to,16,8
	.type	notprived,@object               # @notprived
	.local	notprived
	.comm	notprived,4,4
	.type	us,@object                      # @us
	.local	us
	.comm	us,16,4
	.type	this_conn_id,@object            # @this_conn_id
	.local	this_conn_id
	.comm	this_conn_id,2,2
	.type	next,@object                    # @next
	.local	next
	.comm	next,8,8
	.type	readfds,@object                 # @readfds
	.local	readfds
	.comm	readfds,128,8
	.type	selwait,@object                 # @selwait
	.local	selwait
	.comm	selwait,8,8
	.type	from_sz,@object                 # @from_sz
	.local	from_sz
	.comm	from_sz,4,4
	.type	from,@object                    # @from
	.local	from
	.comm	from,16,4
	.type	ctlptr,@object                  # @ctlptr
	.local	ctlptr
	.comm	ctlptr,8,8
	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"MULTI-PACKET"
	.size	.L.str.3, 13

	.type	seqtxt,@object                  # @seqtxt
	.local	seqtxt
	.comm	seqtxt,8,8
	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"%d OF %d"
	.size	.L.str.4, 9

	.type	vtmp,@object                    # @vtmp
	.local	vtmp
	.comm	vtmp,8,8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym req_udp_port
	.addrsig_sym to_hostname
	.addrsig_sym timeout
	.addrsig_sym ackwait
	.addrsig_sym gapwait
	.addrsig_sym nd_pkts
	.addrsig_sym hostnoport
	.addrsig_sym to
	.addrsig_sym us
	.addrsig_sym readfds
	.addrsig_sym from_sz
	.addrsig_sym from
