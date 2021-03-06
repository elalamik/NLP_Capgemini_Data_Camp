?	????~?A@????~?A@!????~?A@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-????~?A@hZbe4@@11??c???A;??u?+??I???P1?@*	bX9??p@2U
Iterator::Model::ParallelMapV2?q?t????!B
??,S@)?q?t????1B
??,S@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat???????!1?a?xu"@)?????ޔ?1t??$??@:Preprocessing2F
Iterator::Modeli??
???![ʄ,P?T@)?|[?T??1~l?ټ@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlicean?r?|?!P=? ?@)an?r?|?1P=? ?@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate+?MF?a??!l8?@)O#-??#|?1ޚ?Oy?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??????!???M?^1@)E?N???t?1?K????:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensory=??p?!??A_+???)y=??p?1??A_+???:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap????Qِ?!?f3?@)??6?4De?1:???O_??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI+wp)X@Q??Q? @Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	hZbe4@@hZbe4@@!hZbe4@@      ??!       "	1??c???1??c???!1??c???*      ??!       2	;??u?+??;??u?+??!;??u?+??:	???P1?@???P1?@!???P1?@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q+wp)X@y??Q? @?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits??8?q???!??8?q???"=
 sequential_149/dense_449/SoftmaxSoftmax??H?????!'???????"=
sequential_149/dense_447/MatMulMatMul7e???͔?!?Or?]5??0"K
/gradient_tape/sequential_149/dense_449/MatMul_1MatMul-*U
???!p??^I??"K
/gradient_tape/sequential_149/dense_448/MatMul_1MatMulq?;?&???!^??[??"K
-gradient_tape/sequential_149/dense_447/MatMulMatMul?c??x??!?<???&??0"=
sequential_149/dense_448/MatMulMatMul??S????!B2+???0"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdamzm?2?j??!??Ǽ????"K
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdam?{??Ƈ?!?ʫ?(???"K
$Adam/Adam/update_4/ResourceApplyAdamResourceApplyAdam?{??Ƈ?!???Z_t??Q      Y@Y??(??(.@a?뺮?:U@q%'???P@y=?#i???"?
both?Your program is POTENTIALLY input-bound because 91.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?6.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?66.7% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 