?	*p??;F@*p??;F@!*p??;F@	????/?@????/?@!????/?@"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6*p??;F@*?JC@1??Ye?4??A??9d???I??4*p?@Y???+?Z@*	F?????a@2U
Iterator::Model::ParallelMapV2?r??ǡ?!?IV?B8@)?r??ǡ?1?IV?B8@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?k_@/ܡ?!LR?3^8@)" 8?친?1???0ǘ3@:Preprocessing2F
Iterator::Model?&p?n??!9?.*??D@)?g#?M??1?^O?C1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??Bs?F??!??B?i?8@)??Z????1g0???0@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?i?L??!??
K?@)?i?L??1??
K?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??P?n??!?+??=M@)Tol?`??1?}???@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor}\*??{?!
?Q??@)}\*??{?1
?Q??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??>s֧??!?p??.<@)r???	s?1??±?	@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is MODERATELY input-bound because 5.2% of the total step time sampled is waiting for input. Therefore, you would need to reduce both the input time and other time.moderate"?6.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*high2t86.8 % of the total step time sampled is spent on 'All Others' time. This could be due to Python execution overhead.9????/?@I?,nMW@Q?? =???Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	*?JC@*?JC@!*?JC@      ??!       "	??Ye?4????Ye?4??!??Ye?4??*      ??!       2	??9d?????9d???!??9d???:	??4*p?@??4*p?@!??4*p?@B      ??!       J	???+?Z@???+?Z@!???+?Z@R      ??!       Z	???+?Z@???+?Z@!???+?Z@b      ??!       JGPUY????/?@b q?,nMW@y?? =????"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits??Ns?r??!??Ns?r??"=
sequential_270/dense_810/MatMulMatMulbA?J???!\??ľ???0"=
 sequential_270/dense_812/SoftmaxSoftmax?4n???!???̦??"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam?ͤ9"???!?cR????"K
-gradient_tape/sequential_270/dense_810/MatMulMatMule6???Ύ?!:7?2???0"K
/gradient_tape/sequential_270/dense_811/MatMul_1MatMul??t?Ѝ?!??
6??"K
/gradient_tape/sequential_270/dense_812/MatMul_1MatMul???b6ӌ?!i3H???"=
sequential_270/dense_811/MatMulMatMuliZ='???!<=????0"K
$Adam/Adam/update_4/ResourceApplyAdamResourceApplyAdam?ίьT??!????)???"a
Dgradient_tape/sequential_270/batch_normalization_134/moments/truedivRealDiv&"?V?S??!?m???w??Q      Y@Y??(??(.@a?뺮?:U@q??<?^/@yS"??????"?
both?Your program is MODERATELY input-bound because 5.2% of the total step time sampled is waiting for input. Therefore, you would need to reduce both the input time and other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?6.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.high"t86.8 % of the total step time sampled is spent on 'All Others' time. This could be due to Python execution overhead.*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?15.7% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 