delete from mysitg_integration.itg_my_dstrbtr_cust_dim
where cust_id='108129' and OUTLET_ID is not null and outlet_id in (
'49064',
'29085',
'25061',
'41359',
'43946',
'46165',
'48729',
'49601',
'48782',
'18186',
'29087',
'29090',
'29820',
'41357',
'41358',
'44051',
'45050',
'46155',
'29093',
'48668',
'49652',
'49728',
'49835',
'24265',
'47030',
'47253',
'37242',
'45410',
'29743',
'27361',
'47222',
'47404',
'47491',
'41353',
'46590',
'47106',
'49629',
'11358',
'17029',
'17039',
'27232',
'47028',
'47672',
'47939',
'51863',
'26396',
'18002',
'11369',
'27928',
'47025',
'47707',
'48911',
'57558',
'59631',
'29247',
'11365',
'47031',
'47105',
'47280',
'47318',
'47354',
'47484',
'47608',
'47629',
'47749',
'48035',
'49847',
'53883',
'38338',
'44424',
'18112',
'18047',
'17042',
'26892',
'33885',
'44794',
'47100',
'47310',
'47510',
'47568',
'47609',
'48292',
'49386',
'49740',
'47109',
'17026',
'47018',
'47270',
'48282',
'24977'
);

delete from aspedw_integration.edw_crncy_exch where from_crncy='SGD' and to_crncy='NZD' and ex_rt_typ='BWAR'  and (99999999-vld_from) like '202401%' and vld_from in ('79759898','79759870');

